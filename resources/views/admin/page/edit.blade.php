@extends('admin.layouts.app')
@section('content')
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="row">
    <div class="col-md-12">
        <div class="main-card mb-3 card">
            @include('admin/card_head',[
                'title'=>'BCS Committee Management: Create New Page',
                'info'=>'Create and manage Pages of BCS Computer City',
                'links'=>[
                    0=>['text'=>'Page Management','link'=>'/admin/page'],
                    ]  
                ])
                <div class="card-body">
                <form class="" action="{{URL::to('admin/page/'.$content->id)}}"  method="post" enctype="multipart/form-data">
                    @csrf
                @method('PATCH')
                    <div class="position-relative form-group">
                        <label for="title" class="">Page Title</label>
                        <input name="name" type="text" class="form-control" value="{{ $content->name }}">
                    </div>
                    @include('admin.form_slug_edit',['label'=>'Slug','name'=>'slug','slug'=>$content->slug])
                    <div class="position-relative form-group">
                        <label for="summary" class="">Page Summary</label>
                        <input name="summary" id="summary" type="text" class="form-control" value="{{ $content->summary }}">
                    </div>                   
                    @include('admin.form_ckeditor',['name'=>'details','label'=>'About the new Page','value'=>$content->description])                  
                    <div class="position-relative form-group">
                        <label for="url" class="">Upload Url</label>    
                        <input name="upload[0][url]" id="url" type="text" class="form-control" value="{{ $content->upload[0]['url'] }}">
                        <input name="upload[0][id]" type="hidden" class="form-control" value="{{ $content->upload[0]['id'] }}">
                    </div>     
                    {{-- @php
                        dd($content);
                    @endphp --}}
                    @include('admin.form_meta',[
                        'heading'=>$content->meta_heading,
                        'keyword'=>$content->meta_keywords,
                        'meta_title'=>$content->meta_title,
                        'meta_description'=>$content->meta_description,
                        'meta_robots'=>$content->meta_robots,
                        'meta_canonical'=>$content->meta_canonical,
                        'meta_image'=>$content->meta_image,
                        ])
                    @include('admin.form_status',['value'=>$content->status])
                    @include('admin.button_submit')
                </form> 
            </div>
        </div>
    </div>
</div>
    
    </div>
    </div>
</div>
</div>
@endsection