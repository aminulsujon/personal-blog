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
        'title'=>'Create Event',
        'info'=>'Editing this section will change socail share data and SEO information.',
        'links'=>[
            0=>['text'=>'List Event','link'=>'/admin/event']
          ]  
      ])
    <div class="card-body">
        <form class="" action="{{URL::to('admin/event')}}"  method="post" enctype="multipart/form-data">
    @csrf
<div class="row">
    <div class="col-md-6">
        <div class="position-relative form-group">
            <label for="exampleEmail" class="">Title</label>
            <input name="title" type="text" class="form-control" id="name">
        </div>
    </div>
    <div class="col-md-6">
        @include('admin/form_slug')
    </div>
    <div class="col-md-6">
        <div class="position-relative form-group">
            <label for="exampleEmail" class="">Start Date</label>
            <input name="start_date" type="date" class="form-control">
        </div>
    </div>
    <div class="col-md-6">
        <div class="position-relative form-group">
            <label for="exampleEmail" class="">End Date</label>
            <input name="end_date"  type="date" class="form-control">
        </div>
    </div>
    <div class="col-md-6">
        <div class="position-relative form-group">
            <label for="exampleEmail" class="">Event Type</label>
            <select class="form-select" aria-label="Default select example" name="event_type">
                <option value="current">Current</option>
                <option value="upcoming">Upcoming</option>
            </select>
        </div>
    </div>
    <div class="col-md-6">
        <div class="position-relative form-group">
            <label for="exampleEmail" class="">Adress</label>
            <input name="address" type="text" class="form-control">
        </div>
    </div>
    <div class="col-md-6">
        <div class="position-relative form-group">
            <label for="exampleEmail" class="">Location</label>
            <input name="location" type="text" class="form-control">
        </div>
    </div>
    <div class="col-md-6">
        <div class="position-relative form-group">
            <label for="exampleEmail" class="">Logo </label>
            <span class="text-danger">( Image Size 560px X 250px )</span>
            <input name="logo" type="file" class="form-control">
        </div>
    </div>
    <div class="col-md-6">
        <div class="position-relative form-group">
            <label for="exampleEmail" class="">Banner</label>
            <span class="text-danger">( Image Size 980px X 360px )</span>
            <input name="banner" type="file" class="form-control">
        </div>
    </div>
    <div class="col-md-6">
        <div class="position-relative form-group">
            <label for="exampleEmail" class="">Entry Fee</label>
            <input name="entry_fee" type="text" class="form-control">
        </div>
    </div> 
    <div class="col-md-12">
        @include('admin.form_ckeditor',['label'=>'Description','name'=>'description'])
    </div> 
</div>
@include('admin/form_meta')
@include('admin/form_status')
@include('admin/button_submit')
</form>
</div>
</div>
@endsection