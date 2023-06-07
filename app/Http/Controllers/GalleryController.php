<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use App\Models\Content;
use App\Models\Member;
use App\Models\Upload;
use App\Models\Siteoption;
use App\Models\User;
use Auth;

class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $contents = Content::where('content_type' , 'gallery' )->where('status', 1)->Orwhere('status', 0)->with('upload')->get();
        // dd($contents);
        // foreach($contents as $content){
        //     $galleryImages = Upload::select('content_id','caption','file')->where('content_id', $content->id)->get();
        //    // dd($galleryImages);
        // } 
        return view('admin.gallery.index',compact('contents'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.gallery.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
       // dd($request->all());
        $validated = $request->validate([
            'name' => 'required',
            'slug' => 'required',
        ]);
        $content = new Content;
        if(empty($request->name)){
            $content->name = 'Image gallery';
        }
        else{
            $content->name = $request->name;
        }
       
        $content->slug = $request->slug;
        $content->content_type = 'gallery';
        $content->user_id = Auth::user()->id;
        $content->meta_heading = $request->meta_heading;
        $content->meta_title = $request->meta_title;
        $content->meta_keywords = $request->meta_keywords;
        $content->meta_description = $request->meta_description;
        $content->meta_robots = $request->meta_robots;
        $content->meta_canonical = $request->meta_canonical;
        $content->meta_image = $request->meta_image; 
        $content->status = $request->status; 
        $content->description = $request->description;
        //generate a new pagelink
        $result = (new LandingController)->generateLanding('gallery',200,$content->slug);
        if($result == 2){   
        if($content->save()){
            $image = $request->file;
            if($image){
                foreach ($image as $key => $value ){     
                    Upload::createSingleUpload($value,$content->id);
                }   
            }  
           
        }
      //  $content->save();  
        //dd('done');
        return redirect('admin/gallery');
     }
     return back()->withInput();    
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $websettings = $this->getWebSettings();
        $contents= Content::findOrfail($id);
        $galleryImages = Upload::select('id','content_id','caption','file')->where('content_id', $id)->get();
        return view('admin.gallery.edit',compact('contents','galleryImages','websettings'));
    }

    public function gallerycompany(Request $request,$id){
        $websettings = $this->getWebSettings();
        $content = Content::findOrfail($id);
        if(!empty($request->name)){
            $content->name = $request->name;
        }else{
            $content->name = 'Gallery name';
        }      
        $content->save();
        
        // remove requested image if requested
        if(!empty($request->image_remove_id) && sizeof($request->image_remove_id)>0){
            foreach ($request->image_remove_id as $key => $value ){
                if(!empty($value)){
                    Upload::unsetImageFromContent($value);
                }
            }                        
        }
        $image = $request->file;
        if($image){
            foreach ($image as $key => $value ){     
                Upload::createSingleUpload($value,$content->id);
            }   
        }      
        if(Auth::user()->id ==1){
            return redirect('admin/member/gallery/'.$content->user_id)->with('success','product saved successfully!');}
        else{
            return redirect()->back();
        }
    }

    public function offercompany(Request $request,$id){
       // dd($request);
        $websettings = $this->getWebSettings();
        $content = Content::findOrfail($id);
        if(!empty($request->name)){
            $content->name = $request->name;
        }else{
            $content->name = 'Offer name';
        }
        $content->save();
        
        // remove requested image if requested
        if(!empty($request->image_remove_id) && sizeof($request->image_remove_id)>0){
            foreach ($request->image_remove_id as $key => $value ){
                if(!empty($value)){
                    Upload::unsetImageFromContent($value);
                }
            }                        
        }
        $image = $request->file;
        if($image){
            foreach ($image as $key => $value ){     
                Upload::createSingleUpload($value,$content->id);
            }   
        }      
        if(Auth::user()->id ==1){
            return redirect('admin/member/offer/'.$content->user_id)->with('success','product saved successfully!');}
        else{
            return redirect()->back();
        }
    }

    public function productcompany(Request $request,$id){
        $websettings = $this->getWebSettings();
        $content = Content::findOrfail($id);
        if(!empty($request->name)){
            $content->name = $request->name;
        }else{
            $content->name = 'Product name';
        }
        $content->save();      
        // remove requested image if requested
        if(!empty($request->image_remove_id) && sizeof($request->image_remove_id)>0){
            foreach ($request->image_remove_id as $key => $value ){
                if(!empty($value)){
                    Upload::unsetImageFromContent($value);
                }
            }                        
        }
        $image = $request->file;
        if($image){
            foreach ($image as $key => $value ){     
                Upload::createSingleUpload($value,$content->id);
            }   
        }      
        if(Auth::user()->id ==1){
            return redirect('admin/member/product/'.$content->user_id)->with('success','product saved successfully!');}
        else{
            return redirect()->back();
        }
    }
    public function servicecompany(Request $request,$id){
        // dd($request);
        $websettings = $this->getWebSettings();
        $content = Content::findOrfail($id);
        $member = Member::where('user_id',$id);
        $content->name = $request->name;
        $image = $request->file('file');
        // dd($image);
        if($image)
        {
            foreach ($image as $key => $value ){
                // check for limit of image upload
                $uploads = Upload::where('content_id',$content->id)->get();
                // dd($websettings['cms_plan_pic']);
                if(count($uploads) > $websettings['cms_plan_pic']){
                    // return redirect('admin/member/service/'.$content->user_id)->with('error','service upload limit reached!');
                }
                $upload = new Upload;
                $upload->user_id= $content->user_id;
                $upload->content_id= $content->id;
                 if(!empty($request->name[$key])){
                    $upload->name=  $request->name[$key];
                }else{
                    $upload->name =  $member->name.' service '.count($uploads).' name';   
                }
                if(!empty($request->name[$key])){
                    $upload->caption=  $request->caption[$key];
                }else{
                    $upload->caption=  $member->name.'-service-'.count($uploads).'-link';
                }
                
                $upload->status= 1;

                $image_name= $value->getClientOriginalName();
                $image_name = explode('.',$image_name);
                $image_extention = end($image_name);
                array_pop($image_name);
                $image_name_string = implode('-',$image_name);
                $upload_path_original = 'images/uploads/large/';
                $upload_path = 'images/uploads/';
                $image_url = $upload_path_original.$this->slugify($image_name_string).'.'.$image_extention;
                $image_url_path = $upload_path_original.$this->slugify($image_name_string);
                $image_full_name = $this->slugify($image_name_string).'.'.$image_extention;

                // check already existing image name
                $isImageName = Upload::where('file', 'LIKE', "%{$image_url_path}%")->get()->count();
                if($isImageName > 0){
                    $image_url = $upload_path_original.$this->slugify($image_name_string).'-'.$isImageName.'.'.$image_extention;
                    $image_full_name = $this->slugify($image_name_string).'-'.$isImageName.'.'.$image_extention;
                }

                $success = $value->move($upload_path_original, $image_full_name);
                
                // dd($upload);
                if($success)
                {
                    $sizes = [400, 500];
                    $size_name = ['thumb', 'small'];
                    for($i = 0; $i < 2; $i++) {
                        $image = Image::make($upload_path_original. $image_full_name);
                        $image->widen($sizes[$i]);
                        $image->save($upload_path .$size_name[$i].'/'. $image_full_name);
                    }
                    $upload->file = $image_full_name;
                    $upload->save();
                }
                

            }
             // redirect 
           if(Auth::user()->id ==1){return redirect('admin/member/service/'.$content->user_id)->with('success','product saved successfully!');}else{return redirect()->back();}
        }
          // redirect 
          if(Auth::user()->id ==1){return redirect('admin/member/service/'.$content->user_id)->with('success','product saved successfully!');}else{return redirect()->back();}
    }
    public function __servicecompany(Request $request,$id){
        // dd($request);
        $websettings = $this->getWebSettings();
        $content = Content::findOrfail($id);
        $member = Member::where('user_id',$id);
        $content->name = $request->name;
        $image = $request->file('file');
        if($image)
        {
            foreach ($image as $key => $value ){
                // check for limit of service listing
                $uploads = Upload::where('content_id',$content->id)->get();
                // dd($uploads);
                if(count($uploads) > $websettings['cms_plan_pic']){
                    return redirect('admin/member/service/'.$content->user_id)->with('error','Service upload limit reached!');
                }
                $upload = new Upload;
                $upload->user_id= $content->user_id;
                $upload->content_id= $content->id;
                 if(!empty($request->name[$key])){
                    $upload->name=  $request->name[$key];
                }else{
                    $upload->name =  $member->name.' service '.count($uploads).' name';   
                }
                if(!empty($request->name[$key])){
                    $upload->caption=  $request->caption[$key];
                }else{
                    $upload->caption=  $member->name.'-service-'.count($uploads).'-link';
                }
                
                $upload->status= 1;

                $image_name= $value->getClientOriginalName();
                $image_name = explode('.',$image_name);
                $image_extention = end($image_name);
                array_pop($image_name);
                $image_name_string = implode('-',$image_name);
                $upload_path_original = 'images/uploads/large/';
                $upload_path = 'images/uploads/';
                $image_url = $upload_path_original.$this->slugify($image_name_string).'.'.$image_extention;
                $image_url_path = $upload_path_original.$this->slugify($image_name_string);
                $image_full_name = $this->slugify($image_name_string).'.'.$image_extention;

                // check already existing image name
                $isImageName = Upload::where('file', 'LIKE', "%{$image_url_path}%")->get()->count();
                if($isImageName > 0){
                    $image_url = $upload_path_original.$this->slugify($image_name_string).'-'.$isImageName.'.'.$image_extention;
                    $image_full_name = $this->slugify($image_name_string).'-'.$isImageName.'.'.$image_extention;
                }

                $success = $value->move($upload_path_original, $image_full_name);
                $sizes = [400, 500];
                $size_name = ['thumb', 'small'];
                for($i = 0; $i < 2; $i++) {
                    $image = Image::make($upload_path_original. $image_full_name);
                    $image->widen($sizes[$i]);
                    $image->save($upload_path .$size_name[$i].'/'. $image_full_name);
                }
                if($success)
                {
                    $upload->file = $image_url;
                    $upload->save();
                }
            }
            return redirect('admin/member/service/'.$content->user_id)->with('success','service saved successfully!');
            
        }
        return redirect()->back()->with('error','service not saved!');
    }

    // this function will be added to helper
    public static function slugify($text, string $divider = '-')
    {
        // replace non letter or digits by divider
        $text = preg_replace('~[^\pL\d]+~u', $divider, $text);

        // transliterate
        $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);

        // remove unwanted characters
        $text = preg_replace('~[^-\w]+~', '', $text);

        // trim
        $text = trim($text, $divider);

        // remove duplicate divider
        $text = preg_replace('~-+~', $divider, $text);

        // lowercase
        $text = strtolower($text);

        if (empty($text)) {
            return 'n-a';
        }

        return $text;
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // dd($request);
        $content= Content::findOrfail($id);
        $content->user_id = Auth::user()->id;
        $content->name = $request->name;
        $content->slug = $request->slug;
        $content->meta_heading = $request->meta_heading;
        $content->meta_title = $request->meta_title;
        $content->meta_keywords = $request->meta_keywords;
        $content->meta_description = $request->meta_description;
        $content->meta_robots = $request->meta_robots;
        $content->meta_canonical = $request->meta_canonical;
        $content->meta_image = $request->meta_image; 
        $content->status = $request->status;
        if($content->save()){
            if($request->status == 1){$statusCode = 200;}else{$statusCode = 404;}
            if($request->slug != $request->oldslug){
                $result = (new LandingController)->generateLanding('gallery',$statusCode,$request->slug);
                $result_new = (new LandingController)->addNextLanding('gallery',301,$request->oldslug,$request->slug);
            }elseif($request->status != 1){
                $result = (new LandingController)->updateLanding('gallery',$statusCode,$request->slug);
             }

            // remove requested image if requested
            if(!empty($request->image_remove_id) && sizeof($request->image_remove_id)>0){
                foreach ($request->image_remove_id as $key => $value ){
                    if(!empty($value)){
                        Upload::unsetImageFromContent($value);
                    }
                }                        
            }
            $image = $request->file;
            if($image){
                foreach ($image as $key => $value ){     
                    Upload::createSingleUpload($value,$content->id);
                }   
            }
        }
        
        return redirect('admin/gallery');   

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $content= Content::findOrfail($id);
        $content->status = 3;
        $content->update();    
        return redirect()->back();
    }


    public function getWebSettings(){
        $siteoptions = Siteoption::select('okey','ovalue')->get()->toArray();
        $websettings = [];
        foreach($siteoptions as $key => $value){
            $websettings[$value['okey']] = $value['ovalue'];
        }
        return $websettings;
    }

    
}
