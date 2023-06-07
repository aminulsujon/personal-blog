@extends('admin.layouts.app')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="main-card mb-3 card">
            <div class="card-body">
                <div class="d-flex justify-content-between bd-highlight mb-2 border-bottom pb-2">
                    <h5 class="card-title">Edit Slider</h5>
                    <div>
                        <a class="btn btn-info" href="{{URL::to('admin/slider')}}">Manage Slider</a>
                        <a class="btn btn-info" href="{{URL::to('admin/slider/create')}}">Create Slider</a>
                        @include('admin/button_back')
                    </div>
                </div>
                <form class="" action="{{URL::to('admin/slider/'.$content->id)}}"  method="post" enctype="multipart/form-data">
                    @csrf
                    @method('PATCH')
                    <div class="position-relative form-group">
                        <label for="exampleEmail" class="">Name</label>
                        <input name="name" type="text" class="form-control" value="{{ $content->name }}" required="required">
                    </div>
                    @include('admin/form_slug_edit',['slug'=>$content->slug])
                    <div class="mb-2">
                        <div class="d-none" id="tagRemoveRequest"></div>
                        Selected Tags: 
                        <div id="prevTags">
                            @if(!empty($content->tag[0]))
                                @foreach($content->tag as $tag)
                                    @if($tag->tag_type == 4)
                                    <div id="oldTag{{$tag['id']}}" class="badge badge-info mr-2 mb-2">
                                        {{$tag->title}} 
                                        <a onclick="setRemoveTags({{$tag['id']}});" href="javascript:void(0);"> x </a>
                                    </div>
                                    @endif
                                @endforeach
                            @endif
                        </div>
                    </div>
                    @if(!empty($content['upload'][0]))
                    @include('admin.form_image_display_single',['file'=>$content['upload'][0]])
                    <div style="display:none" id="image_upload_single">@include('admin.form_image_upload_single')</div>
                    @else
                        <div class="border mb-2 p-2">@include('admin.icon_image') No image uploaded yet</div>
                        <div id="image_upload_single">@include('admin.form_image_upload_single')</div>
                    @endif                   
                    @include('admin/form_status',['value'=>$content->status])
                    @include('admin/button_submit')
                </form>
            </div>
        </div>
    </div>
</div>
<style>
    .close{
        line-height: 0.3;
        font-weight: normal;
        color: black;
        opacity: 1;
        margin-left: 10px;
    }
    .disabled{color:#ddd}
    .disabled.badge-info{background:#eee}
</style>
@endsection
@section('page_script')
    @include('admin.script_image_edit')
    @include('admin.script_tag_edit')
@endsection 