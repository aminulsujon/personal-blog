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

<div class="main-card mb-3 card">
    @include('admin/card_head',[
        'title'=>'Edit Event',
        'info'=>'Edit your event from this page, image size should be 900x600px',
        'links'=>[
            0=>['text'=>'Event Management','link'=>'/admin/event'],
            1=>['text'=>'Create New Event','link'=>'/admin/event/create'],
            ]  
        ])
    <div class="card-body"><h5 class="card-title"> Edit Event</h5>
        <form action="{{URL::to('admin/event/'.$events->id)}}"  method="post" enctype="multipart/form-data">
        @csrf
        @method('PATCH')
        <div class="row">
            <div class="col-md-6">
                <div class="position-relative form-group">
                    <label for="exampleEmail" class="">Title</label>
                    <input name="title"  type="text" class="form-control" value="{{ $events->title }}">
                </div>
            </div>
            <div class="col-md-6">
                @include('admin/form_slug_edit',['slug'=>$events->slug])
            </div>
            <div class="col-md-6">
                <div class="position-relative form-group">
                    <label for="exampleEmail" class="">Start Date</label>
                    <input name="start_date" type="date" class="form-control" value="{{ $events->start_date }}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="position-relative form-group">
                    <label for="exampleEmail" class="">End Date</label>
                    <input name="end_date"  type="date" class="form-control" value="{{ $events->end_date }}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="position-relative form-group">
                    <label for="exampleEmail" class="">Event Type : <b>{{ $events->event_type }}</b></label>  <br>                
                    <select class="form-select" aria-label="Default select example" name="event_type">
                        <option value="current">Current</option>
                        <option value="upcoming">Upcoming</option>
                    </select>
                </div>
            </div>
            <div class="col-md-6">
                <div class="position-relative form-group">
                    <label for="exampleEmail" class="">Adress</label>
                    <input name="address" type="text" class="form-control" value="{{ $events->address }}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="position-relative form-group">
                    <label for="exampleEmail" class="">Location</label>
                    <input name="location" type="text" class="form-control" value="{{ $events->location }}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="position-relative form-group">
                    <label for="exampleEmail" class="">Logo</label>
                    <span class="text-danger">( Image Size 560px X 250px )</span>
                    @if(isset($events))
                        <div class="form-group">
                            <img src="{{ asset('images/event/thumb/'.$events->logo) }}" alt="Image" style="width: 20%; margin-top: 8px">
                            <input type="hidden" name="old_image" value="{{ $events->logo }}">
                        </div>
                     @endif
                    <input name="logo" type="file" class="form-control" >
                </div>
            </div>
            <div class="col-md-6">
                <div class="position-relative form-group">                
                    @if(isset($events))
                        <div class="form-group">
                            <img src="{{ asset('images/event/banner/'.$events->banner) }}" alt="Image" style="width: 20%; margin-top: 8px">
                            <input type="hidden" name="old_image" value="{{ $events->banner }}">
                        </div>
                    @endif
                    <label for="exampleEmail" class="">Banner</label>
                    <span class="text-danger">( Image Size 980px X 360px )</span>
                    <input name="banner" type="file" class="form-control">
                </div>
            </div>
            <div class="col-md-6">
                <div class="position-relative form-group">
                    <label for="exampleEmail" class="">Entry Fee</label>
                    <input name="entry_fee" type="text" class="form-control" value="{{ $events->entry_fee }}">
                </div>
            </div> 
            <div class="col-md-12">
                <div class="position-relative form-group">
                    @include('admin.form_ckeditor',['label'=>'Description','name'=>'description','value'=>  $events->description])
                </div>
            </div> 

        </div>
        @include('admin.form_meta',[
            'heading'=>$events->meta_heading,
            'keyword'=>$events->meta_keywords,
            'meta_title'=>$events->meta_title,
            'meta_description'=>$events->meta_description,
            'meta_robots'=>$events->meta_robots,
            'meta_canonical'=>$events->meta_canonical,
            'meta_image'=>$events->meta_image,
            ])
        @include('admin/form_status',['value'=>$events->status])
        @include('admin/button_submit')
        </form>
</div>
</div>
@endsection