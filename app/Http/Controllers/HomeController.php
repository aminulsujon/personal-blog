<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Welcome;
use App\Models\Content;
use App\Models\Siteoption;
use App\Models\Landing;
use App\Models\Pagesetting;
use App\Models\Event;
use App\Models\Member;
use App\Models\Tag;


class HomeController extends Controller
{
    public function home(){
        $websettings = $this->getWebSettings();
        $pagesetting = $this->getPageSetting('index');
        $welcome= Welcome::select('text_one','text_two')->first();
        $sliders= Content::where('content_type','slider')->where('status',1)->with('upload')->get();
        $committees= Content::where('content_type','committee')->where('status',1)->with('upload')->get();
        $news= Content::where('content_type','news')->where('status',1)->with('upload')->get();
        $blogs= Content::where('content_type','blog')->where('status',1)->with('upload')->get();
        $notices= Content::where('content_type','notice')->where('status',1)->with('upload')->get();
        return view('welcome',compact('welcome','sliders','committees','blogs','notices','websettings','pagesetting','tags','news'));
    }

    public function landing($pagelink = null){
        $requested = request()->all();
        // get website global settings
        $websettings = $this->getWebSettings();
        $tags = $this->getWebMenus();
        $footermenu = $this->getfooterMenus();
        $logo= Content::where('content_type','logo')->where('status',1)->with('upload')->first();
        // dd($websettings);
        // dd('pagelink',$pagelink);
        if(empty($pagelink)){
            $pagesetting = $this->getPageSetting('index');
            $welcome= Welcome::select('text_one','text_two','welcome_ticker','status')->where('status', 1)->first();
            $sliders= Content::where('content_type','slider')->where('status',1)->with('upload')->get();
            $committees= Content::where('content_type','committee')->where('status',1)->with('upload')->get();
            $blogs= Content::where('content_type','blog')->where('status',1)->orderBy('id','desc')
            ->with('upload')->take(3)->get();
            $news= Content::where('content_type','news')->where('status',1)->orderBy('id','desc')->with('upload')->take(3)->get();
            $notices = Content::where('content_type','notice')->where('status',1)->orderBy('id','desc')->with('upload')->take($websettings['cms_hnc'])->get();
            $gallery = Content::where('content_type' , 'gallery')->where('status', 1)->orderBy('id','desc')->with('upload')->take(4)->get();
            $videos = Content::where('content_type' , 'video')->where('status', 1)->orderBy('id','desc')->with('upload')->take(4)->get();
            $upcomingEvents= Event::where('event_type', 'current')->where('status', 1)->orderBy('id','desc')->take(2)->get();
            $currentEvents= Event::where('event_type', 'upcoming')->where('status', 1)->orderBy('id','desc')->take(2)->get();
            $singlecommittee = Content::where('content_type' , 'committee' )->with(['upload','employee','content_employee'])->where('status', 1)->first();
            $pages = Content::where('content_type' , 'page' )->where('status',1)->orderBy('id','desc')->with('upload')->take(2)->get();
            return view($websettings['cms_layout'].'.index',compact('websettings','pagesetting','welcome','sliders','committees','blogs','notices','gallery','tags','news','videos','upcomingEvents','currentEvents','singlecommittee','pages','footermenu','logo'));
        }

        $landing = Landing::where('pagelink',$pagelink)->first();
        // if there is landing, the page exists or created
        if(!empty($landing)){
            // if the link has been redirected, redirect the new link
            if(!empty($landing->nextpagelink)){
                // landing page has a redirect or next page link, then redirect to new landing
                return redirect()->action([HomeController::class, 'landing'],$landing->nextpagelink);
            }elseif($landing->statuscode == 200){
                // the page should have a valid response
                // check the link type and set data source
                switch($landing->linktype){
                    case ('content'):
                        // play your content logic here
                        $content = Content::where('slug',$pagelink)->first();
                        return view($websettings['cms_layout'].'.content',compact('content','websettings','tags','logo','footermenu'));
                        break;
                    case ('event'):
                        $event= Event::where('slug' ,$pagelink)->where('status', 1)->first();
                       // dd($event);
                        return view($websettings['cms_layout'].'.eventDetails',compact('event','websettings','tags','footermenu'));
                        break;
                    case ('member'):
                        $member = Member::where('slug' ,$pagelink)
                                        ->where('status',1)
                                        ->with('Employee','Branch')
                                        ->first();
                        // dd($member);
                         $member_gallery = Content::where('user_id',$member->user_id)->where('content_type','member_gallery')->with('upload')->first();
                         $member_offer = Content::where('user_id',$member->user_id)->where('content_type','member_offer')->with('upload')->first();
                         $member_product = Content::where('user_id',$member->user_id)->where('content_type','member_product')->with('upload')->first();
                        // dd($member_product);
                        return view($websettings['cms_layout'].'.memberDetails',compact('member','websettings','tags','member_gallery','member_offer','member_product','footermenu','logo'));
                        break;
                    case ('news'):
                        $contents = Content::where('content_type','news')->where('status',1)->with('upload')->take(3)->get();
                        $content = Content::where('slug' ,$pagelink)->where('status',1)->with('upload')->first();
                        return view($websettings['cms_layout'].'.newsDetails',compact('contents','content','websettings','tags','footermenu','logo'));
                        break;
                    // case ('press'):
                    //     $content = Content::where('slug' ,$pagelink)->where('status',1)->with('upload')->first();
                    //     dd($content);
                    //     return view($websettings['cms_layout'].'.pressDetails',compact('content','websettings','tags'));
                    //     break;
                    case ('blog'):
                        $content = Content::where('slug' ,$pagelink)->where('status',1)->with([
                            'upload' => function($q) {
                                $q->where('status', '=', 1);
                            },
                            'comment' => function($q) {
                                $q->where('status', '=', 1);
                                $q->orderBy('id', 'DESC');
                            }
                        ])->first();
                        // $content->available_videos()->get();
                        // dd($content);
                        $contents = Content::where('content_type','blog')->where('status',1)->with('upload')->orderBy('id','DESC')->whereNotIn('id', [$content->id])->take(5)->get();
                        return view($websettings['cms_layout'].'.blogDetails',compact('contents','content','websettings','tags','footermenu','logo'));
                        break;
                    case ('notice'):
                        $content= Content::where('slug' ,$pagelink)->where('status', 1)->with('upload')->first();;
                       //dd($content);
                        return view($websettings['cms_layout'].'.noticeDetails',compact('content','websettings','tags','footermenu','logo'));
                        break;
                    case ('gallery'):
                        $content= Content::where('content_type' , 'gallery')->where('status', 1)->where('slug' ,$pagelink)->with('upload')->first();
                      //dd($content);
                        return view($websettings['cms_layout'].'.galleryDetails',compact('content','websettings','tags','footermenu','logo'));
                        break;
                    case ('video'):
                        $content= Content::where('content_type' , 'video')->where('status', 1)->where('slug' ,$pagelink)->with('upload')->first();
                      //dd($content);
                        return view($websettings['cms_layout'].'.videoDetails',compact('content','websettings','tags','footermenu','logo'));
                        break;
                    case ('page'):
                        $content= Content::where('content_type' , 'page')->where('status', 1)->where('slug' ,$pagelink)->with('upload')->first();
                    //dd($content);
                        return view($websettings['cms_layout'].'.pageDetails',compact('content','websettings','tags','footermenu','logo'));
                        break;
                    case ('landing'):
                        // play your shop logic here
                        // dd('ok',$landing);
                        $pagesetting = $this->getPageSetting($pagelink);
                        if($pagelink =='events'){
                            $events = Event::where('status', 1)->paginate(12);
                            //dd($events);
                            return view($websettings['cms_layout'].'.allEvents',compact('events','websettings','pagesetting','tags','footermenu','logo'));
                        }
                        elseif($pagelink =='news'){
                            $contents = Content::where('content_type' , 'news')->where('status', 1)->with('upload')->paginate(12);
                          //dd($contents);
                            return view($websettings['cms_layout'].'.allNews',compact('contents','websettings','pagesetting','tags','footermenu','logo'));
                        }
                        elseif($pagelink =='press-release'){
                            $contents = Content::where('content_type' , 'press' )->with(['Upload'])->orderBy('id','desc')->get();
                        //dd($contents);
                            return view($websettings['cms_layout'].'.pressAll',compact('contents','websettings','pagesetting','tags','footermenu','logo'));
                        }
                        elseif($pagelink =='blog'){
                            $contents = Content::where('content_type' , 'blog')->where('status', 1)->with('upload')->paginate(12);
                        //  dd($contents);
                            return view($websettings['cms_layout'].'.allBlog',compact('contents','websettings','pagesetting','tags','footermenu','logo'));
                        }
                        elseif($pagelink =='members'){
                            $member_name = $member_floor = '';
                            if(!empty($requested['member_name'])){
                                $member_name = $requested['member_name'];
                            }
                            if(!empty($requested['member_floor'])){
                                $member_floor = $requested['member_floor'];
                            }
                            $members = Member::select('id','title','slug','logo','businessAddress','mobile','email','companyWebsite')
                                        ->where(function ($query) use ($member_name,$member_floor) {
                                            //member name requested
                                            if(!empty($member_name)){$query->where('title', 'like', "%{$member_name}%");}
                                            //member floor requested
                                            if(!empty($member_floor)){$query->where('floorCentral', '=', $member_floor);}
                                        })            
                                        ->where('status',1)
                                        ->with('Employee','Branch')
                                        ->paginate(12);
                            //dd($members);
                            return view($websettings['cms_layout'].'.allmember',compact('members','websettings','pagesetting','tags','footermenu','logo'));
                        }

                        elseif($pagelink =='notice'){
                            $notice = Content::where('content_type' , 'notice')->where('status', 1)->with('upload')->paginate(12);
                          //dd($notice);
                            return view($websettings['cms_layout'].'.noticeAll',compact('notice','websettings','tags','pagesetting','footermenu','logo'));
                        }
                        elseif($pagelink =='gallery'){
                            $contents = Content::where('content_type' , 'gallery')->where('status', 1)->with('upload')->paginate(12);
                          //dd($contents);
                            return view($websettings['cms_layout'].'.galleryAll',compact('contents','websettings','tags','pagesetting','footermenu','logo'));
                        }
                        elseif($pagelink =='committee'){
                            $singlecommittee = Content::where('content_type' , 'committee' )->with(['upload','employee','content_employee'])->where('status', 1)->first();
                            return view($websettings['cms_layout'].'.committeeALl',compact('singlecommittee','websettings','tags','pagesetting','footermenu','logo'));
                        }
                        elseif($pagelink =='contact'){
                            return view($websettings['cms_layout'].'.contact',compact('websettings','tags','pagesetting','footermenu','logo'));
                        }
                        elseif($pagelink =='about-us'){
                            return view($websettings['cms_layout'].'.aboutus',compact('websettings','tags','pagesetting','footermenu','logo'));
                        }
                        elseif($pagelink =='get-a-quotation'){
                            return view($websettings['cms_layout'].'.quotation',compact('websettings','tags','pagesetting','footermenu','logo'));
                        }
                        elseif($pagelink =='videos'){
                            $contents = Content::where('content_type' , 'video')->where('status', 1)->with('upload')->paginate(12);
                            return view($websettings['cms_layout'].'.videoAll',compact('contents','websettings','tags','pagesetting','footermenu','logo'));
                        }
                        break;
                    default:
                    // play your default logic here
                }
            }
        }else{
            // requested pagelink not found on landing page collection
            return redirect('/four-zero-four');
        }
    }
    public function getPageSetting($pageSlug = null){
        $pagesetting = Pagesetting::where('meta_slug',$pageSlug)->first();
        return $pagesetting;
    }
    
    public function getWebSettings(){
        $siteoptions = Siteoption::select('okey','ovalue')->get()->toArray();
        $websettings = [];
        foreach($siteoptions as $key => $value){
            $websettings[$value['okey']] = $value['ovalue'];
        }
        return $websettings;
    }
    public function member_login(){
        return view('frontend.member.login');
    }
    public function getWebMenus(){
        $tags = Tag::where('status', 1)
                ->where('tag_type',1)
                ->orderBy('sequence','ASC')
                ->orderBy('id','DESC')
                ->get();    
        return $tags;
    }
    public function getfooterMenus(){
        $footermenu = Tag::where('status', 1)
                ->where('tag_type',2)
                ->orderBy('sequence','ASC')
                ->orderBy('id','DESC')
                ->get();    
        return $footermenu;
    }
}
