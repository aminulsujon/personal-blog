<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use App\Models\Event;
use App\Models\Upload;
use App\Models\User;
use Auth;

class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $events = Event::select('id','title','logo','banner','status')->where('status', 1)->Orwhere('status', 0)->get();
        return view('admin.event.index',compact('events'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()    
    {
        return view('admin.event.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required',
            'slug' => 'required',
        ]);
        $event = new Event;
        $event->title = $request->title;
        $event->slug = $request->slug;
        $event->event_type = $request->event_type;
        $event->user_id = Auth::user()->id;
        $event->start_date = $request->start_date;
        $event->end_date = $request->end_date;   
        $event->address = $request->address;   
        $event->location = $request->location;   
        $logo = $request->file('logo');
        if($logo)
        {
            $image_name= $logo->getClientOriginalName();
            $image_full_name = $image_name;
            $upload_path_original = 'images/event/large/';
            $upload_path = 'images/event/';
            $image_url = $upload_path_original.$image_full_name;
            // dd($image_full_name);
            $success = $logo->move($upload_path_original, $image_full_name);
            $sizes = [80,200, 480];
            $size_name = ['icon','thumb','small'];
            for($i = 0; $i < 2; $i++) {
                $image = Image::make($upload_path_original. $image_full_name);
                $image->widen($sizes[$i]);
                $image->save($upload_path .$size_name[$i].'/'. $image_full_name);
            }
            if($success)
            {
                $event->logo = $image_full_name;
            }
        }
        $banner = $request->file('banner');
        if($banner)
        {
            $image_name= $banner->getClientOriginalName();
            $image_full_name = $image_name;
            $upload_path_original = 'images/event/banner/';
            $upload_path = 'images/event/';
            $image_url = $upload_path_original.$image_full_name;
            $success = $banner->move($upload_path_original, $image_full_name);
            $sizes = [800, 1600];
            $size_name = ['banner_large', 'banner_medium'];
            for($i = 0; $i < 2; $i++) {
                $image = Image::make($upload_path_original. $image_full_name);
                $image->widen($sizes[$i]);
                $image->save($upload_path .$size_name[$i].'/'. $image_full_name);
            }
            if($success)
            {
                $event->banner = $image_full_name;
                // dd($event->banner);
            }
        }
        $event->description = $request->description;   
        $event->entry_fee = $request->entry_fee;   
        $event->status = $request->status;  
        $event->meta_heading = $request->meta_heading;
        $event->meta_title = $request->meta_title;
        $event->meta_keywords = $request->meta_keywords;
        $event->meta_description = $request->meta_description;
        $event->meta_robots = $request->meta_robots;
        $event->meta_canonical = $request->meta_canonical;
        $event->meta_image = $request->meta_image;
        if($request->status == 1){$statusCode = 200;}else{$statusCode = 404;}
        //generate a new pagelink
        $result = (new LandingController)->generateLanding('event',$statusCode,$request->slug);
        if($result == 2){ 
             $event->save();
        }
        return redirect('admin/event');
        
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
        $events= Event::findOrfail($id);
        return view('admin.event.edit',compact('events'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {

         //dd($request->all());   
        $event = Event::findOrfail($id);
        $event->title = $request->title;
        $event->slug = $request->slug;
        $event->event_type = $request->event_type;
        $event->user_id = Auth::user()->id;
        $event->start_date = $request->start_date;
        $event->end_date = $request->end_date;   
        $event->address = $request->address;   
        $event->location = $request->location;   
        $logo = $request->file('logo');
        if($logo)
        {
            $image_name= $logo->getClientOriginalName();
            $image_full_name = $image_name;        
            $upload_path_original = 'images/event/large/';
            $upload_path = 'images/event/';
            $image_url = $upload_path_original.$image_full_name;
            $success = $logo->move($upload_path_original, $image_full_name);
            $sizes = [80,200, 480];
            $size_name = ['icon','thumb','small'];
            for($i = 0; $i < 2; $i++) {
              //  dd($upload_path. $image_full_name);
                $image = Image::make($upload_path_original. $image_full_name);
                $image->widen($sizes[$i]);
                $image->save($upload_path .$size_name[$i].'/'. $image_full_name);
            }
            if($success)
            {
                $old_image = $request->old_image;
                if (file_exists($old_image)) {
                    unlink($request->old_image);
                }
                $event->logo = $image_full_name;
            }
        }
        $banner = $request->file('banner');
        if($banner)
        {
            $image_name= $banner->getClientOriginalName();
            $image_full_name = $image_name;
            $upload_path_original = 'images/event/banner/';
            $upload_path = 'images/event/';
            $image_url = $upload_path_original.$image_full_name;
            $success = $banner->move($upload_path_original, $image_full_name);
            $sizes = [200, 480, 800, 1600];
            $size_name = ['banner_thumb', 'banner_small','banner_medium','banner_large'];
            for($i = 0; $i < 4; $i++) {
              //dd($upload_path. $image_full_name);
                $image = Image::make($upload_path_original. $image_full_name);
                $image->widen($sizes[$i]);
                $image->save($upload_path .$size_name[$i].'/'. $image_full_name);
            }
            if($success)
            {
                $event->banner = $image_full_name;
            }
        } 
        $event->description = $request->description;   
        $event->entry_fee = $request->entry_fee;  
        $event->description = $request->description;   
        $event->entry_fee = $request->entry_fee;   
        $event->status = $request->status;  
        $event->meta_heading = $request->meta_heading;
        $event->meta_title = $request->meta_title;
        $event->meta_keywords = $request->meta_keywords;
        $event->meta_description = $request->meta_description;
        $event->meta_robots = $request->meta_robots;
        $event->meta_canonical = $request->meta_canonical;
        $event->meta_image = $request->meta_image; 
        $event->status = $request->status;    
        if($request->status == 1){$statusCode = 200;}else{$statusCode = 404;} 
        if($request->slug != $request->oldslug){
            $result = (new LandingController)->generateLanding('event',$statusCode,$request->slug);
            $result_new = (new LandingController)->addNextLanding('event',301,$request->oldslug,$request->slug);
        }
        else{
            $result = (new LandingController)->updateLanding('event',$statusCode,$request->slug);
        }  
        $event->save();
        return redirect('admin/event');
    }
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $event= Event::findOrfail($id);
        $event->status = 3;
        $event->update();    
        return redirect()->back();
    }
}
