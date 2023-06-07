<?php

namespace App\Http\Controllers;
use App\Models\Tag;
use Illuminate\Http\Request;
use Auth;

class TagController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $tags = Tag::orderBy('sequence','ASC')->orderBy('id','DESC')->paginate(20);
        return view('admin.tag.index',compact('tags'));
    }

    public function create()
    {
        $tags = Tag::where('parent',0)->get()->toArray();
        return view('admin.tag.create',compact('tags'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function store(Request $request)
    {
        $tag = new Tag;
        $tag->tag_type = 'menu';
        $tag->user_id = Auth::user()->id;
        if(!empty($request->parent)){
            $tag->parent = $request->parent;
        }else{
            $tag->parent = 0;
        }
        $tag->slug = $request->slug;
        $tag->title = $request->title;
        $tag->linkto = $request->linkto;
        $tag->linkUrl = $request->linkUrl;
        
        if(!empty($request->sequence)){
            $tag->sequence = $request->sequence;
        }else{
            $tag->sequence = 100; 
        }
        
        $tag->status = $request->status;
        $tag->save();

        return redirect('admin/tag');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $tags = Tag::where('parent',0)->get()->toArray();
        $tag= Tag::findOrfail($id);
        return view('admin.tag.edit',compact('tag','tags'));
    }

    public function update(Request $request, $id)
    {
        
        $tag= Tag::findOrfail($id);
        $tag->title = $request->title;
        $tag->linkto = $request->linkto;
        $tag->linkUrl = $request->linkUrl;
        if(!empty($request->parent)){
            $tag->parent = $request->parent;
        }else{
            $tag->parent = 0;
        }
        if(!empty($request->sequence)){
            $tag->sequence = $request->sequence;
        }else{
            $tag->sequence = 100; 
        }
        
        $tag->status = $request->status;
        $tag->save();

        return redirect('admin/tag');
    }
}
