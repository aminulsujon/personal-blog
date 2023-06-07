@extends('member.layouts.app')
@section('content')
    <div class="row">
        <div class="col-md-8">
            <div class="main-card mb-3 card">
            <div class="card-body"><h5 class="card-title"> Edit Company Info</h5>
            <form class="" action="{{URL::to('member/company/'.$member->id)}}"  method="post" enctype="multipart/form-data">
                @csrf
                <div class="col-md-12">
                    <div class="form-group ">
                        <label for="exampleFormControlInput1">Company Name</label>
                        <input type="text" class="form-control form-control-lg" name="title" value="{{ $member->title}}" required>
                    </div>
                </div>  
                @include('admin.form_slug_edit',['slug'=>$member->slug])                    
                <div class="col-md-12">
                    <div class="form-group ">
                        <label for="exampleFormControlInput1">Email address</label>
                        <input type="email" class="form-control form-control-lg" name="email" value="{{ $member->email}}" required>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Phone</label>
                        <input type="text" class="form-control form-control-lg" name="phone" value="{{ $member->mobile}}">
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Telephone</label>
                        <input type="text" class="form-control form-control-lg" name="telephone" value="{{ $member->telephone}}">
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Business Address</label>
                        <input type="text" class="form-control form-control-lg" name="businessAddress" value="{{ $member->businessAddress}}">
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Company Website</label>
                        <input type="text" class="form-control form-control-lg" name="companyWebsite" value="{{ $member->companyWebsite}}">
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group mb-4">
                        <label for="exampleFormControlTextarea1">Company Info</label>
                        <textarea class="form-control form-control-lg" name="companyInfo" rows="3">{!!$member->aboutCompany!!}</textarea>
                    </div>
                </div>
                <button class="btn btn-success fs-4" type="submit">Update</button>
            </form>
            </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="company_gallery">
            <p class="border p-2 border-bottom-0 mb-0 ">Company Image Gallery</p>
            <div class="border p-2 mb-4">
                <div class="border-left mb-2 px-2">{{ $gallery->name ?? '' }}</div>
                @if(!empty($gallery->upload[0]['id'])) 
                <div class="row">
                    @foreach($gallery->upload as $galleryImage)          
                        <div class="col-md-3 mb-2">
                            <a href="#">
                                @include('admin.image_display_dynamic',['item'=>$galleryImage,'folder_path'=>'thumb','height'=>50])
                            </a>
                        </div>
                    @endforeach
                </div>  
                @else
                    <div class="alert alert-warning mt-2">
                        No Image Uploaded
                    </div>
                @endif
                <a href="{{ route('member.gallery')}}">Edit Gallery</a>
            </div>           
            <p class="border-bottom pb-2 mb-2">Company Offers</p>
            <div class="border p-2 mb-4">
                <div class="border-left mb-2 px-2">{{ $offer->name ?? ''}}</div>
                @if(!empty($offer->upload[0]['id'])) 
                <div class="row">
                    @foreach($offer->upload as $galleryImage)          
                    <div class="col-md-3 mb-2">
                        <a href="#">
                            @include('admin.image_display_dynamic',['item'=>$galleryImage,'folder_path'=>'thumb','height'=>50])
                        </a>
                    </div>
                    @endforeach
                </div>  
                @else
                    <div class="alert alert-warning mt-2">
                        No offer updoaded
                    </div>
                @endif
                <a href="{{ route('member.offer') }}">Edit Offer</a>
            </div>
        </div>
    </div>

@endsection