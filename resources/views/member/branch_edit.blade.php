
@extends('member.layouts.app')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="main-card mb-3 card">
            <div class="card-body">
                <form class="" action="{{URL::to('member/branch/'.$branch->id)}}"  method="post" enctype="multipart/form-data">
                    @csrf
                    @method('PATCH')
                    <input name="user_id" required="required" type="hidden" class="form-control" value="{{$branch->user_id}}">
                    <div class="position-relative form-group">
                        <label class="">Branch name</label>
                        <input name="name" required="required" type="text" class="form-control" value="{{$branch->name}}">
                    </div>
                    <div class="position-relative form-group">
                        <label class="">Open hours</label>
                        <input name="openHours" type="text" class="form-control" value="{{$branch->openHours}}">
                    </div>
                    <div class="position-relative form-group">
                        @include('admin.form_textarea',['label'=>'Address','name'=>'address','value'=>$branch->address])
                    </div>
                    <div class="position-relative form-group">
                        <label class="">Map link</label>
                        <input name="mapLink" type="text" class="form-control" value="{{$branch->mapLink}}">
                    </div>
                    <legend class="border-bottom pb-2 mb-2">Contact Numbers</legend>
                    @php 
                    $contacts = json_decode($branch->contacts,true);
                    @endphp
                    @foreach($contacts as $key => $value)
                    <div class="row mb-2">
                        <div class="col-6"><input name="contact[{{$key}}][name]" placeholder="Name" type="text" class="form-control" value="{{$value['name']}}"></div>
                        <div class="col-6"><input name="contact[{{$key}}][phone]" placeholder="Phone" type="text" class="form-control" value="{{$value['phone']}}"></div>
                    </div>
                    @endforeach                 
                    @include('admin/form_status',['value'=>$branch->status])
                    @include('admin/button_submit')
                </form>
            </div>
        </div>
    </div>
</div>
@endsection