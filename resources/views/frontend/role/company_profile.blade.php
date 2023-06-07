@extends('frontend.layouts.app')
@section('content')
<section class="section-padding">
    <div class="container">
    <div class="row">
            <h1 class="text-center mb-5">Company Profile</h1>
                <form action="#" method="POST">
                    @csrf
                    <div class="card-body">
                        <div class="row">
                            @include('frontend.member_sidebar')
                            <div class="col-md-6">
                                <div class="col-md-12">  
                                    <div class="form-group mb-4">
                                        <label for="exampleFormControlInput1">Company Name</label>
                                        <input type="text" class="form-control form-control-lg" name="name" required>
                                    </div>
                                </div>                      
                                <div class="col-md-12">
                                    <div class="form-group mb-4">
                                        <label for="exampleFormControlInput1">Email address</label>
                                        <input type="email" class="form-control form-control-lg" name="email" required>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group mb-4">
                                        <label for="exampleFormControlInput1">Phone</label>
                                        <input type="text" class="form-control form-control-lg" name="phone">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group mb-4">
                                        <label for="exampleFormControlInput1">Telephone</label>
                                        <input type="text" class="form-control form-control-lg" name="telephone">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group mb-4">
                                        <label for="exampleFormControlInput1">Business Address</label>
                                        <input type="text" class="form-control form-control-lg" name="businessAddress">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group mb-4">
                                        <label for="exampleFormControlInput1">Company Website</label>
                                        <input type="text" class="form-control form-control-lg" name="companyWebsite">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group mb-4">
                                        <label for="exampleFormControlTextarea1">Company Info</label>
                                        <textarea class="form-control form-control-lg" name="companyInfo" rows="3"></textarea>
                                    </div>
                                </div>
                                <button class="btn btn-success fs-4">Update</button>
                            </div>
                            <div class="col-md-4">
                                <div class="company_gallery">
                                <p class="border p-2 border-bottom-0 mb-0 ">Company Image Gallery</p>
                                <div class="border p-2 mb-4">
                                    <div class="border-left mb-2 px-2">#</div>
                                    @if(!empty($gallery->upload[0]['id'])) 
                                    <div class="row">
                                        @foreach($gallery->upload as $galleryImage)          
                                        <div class="col-md-3 mb-2">
                                            <a href="#">
                                                <img class="img-fluid" src="{{ asset($galleryImage->file ?? '') }}">
                                            </a>
                                        </div>
                                        @endforeach
                                    </div>  
                                    @else
                                        <div class="alert alert-warning mt-2">
                                            No image uploaded
                                        </div>
                                    @endif
                                    <a href="{{ route('member.gallery')}}">Edit Gallery</a>
                                </div>           
                                <p class="border-bottom pb-2 mb-2">Company Offers</p>
                                <div class="border p-2 mb-4">
                                    <div class="border-left mb-2 px-2">Offer Name</div>
                                    @if(!empty($offer->upload[0]['id'])) 
                                    <div class="row">
                                        @foreach($offer->upload as $galleryImage)          
                                            <div class="col-md-3 mb-2">
                                                <a href="#">
                                                    <img class="img-fluid" src="{{ asset($galleryImage->file ?? '') }}">
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>  
                                    @else
                                    <div class="alert alert-warning mt-2">
                                    No offer uploaded
                                    </div>
                                    @endif
                                    <a href="{{ route('member.offer') }}">Edit Offer</a>
                                </div>
                            </div>
                            </div><!-- end of other information -->
                    </div>                   
                </form>
        </div>
    </div>
</div>
</section>
@endsection