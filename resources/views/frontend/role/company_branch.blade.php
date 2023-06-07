@extends('frontend.layouts.app')
@section('content')
<section class="section-padding">
    <div class="container">
        <div class="card-body">
            <p class="card-title"> Edit Branch</p>
            <div class="row">
                @include('frontend.member_sidebar')
                <div class="col-md-10">
                    <form class="" action="#"  method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="position-relative form-group mb-4 mt-2">
                                    <div class="col-md-12">  
                                        <div class="form-group mb-4">
                                            <label for="exampleFormControlInput1">Branch Name</label>
                                            <input type="text" class="form-control form-control-lg" name="name" required>
                                        </div>
                                    </div>                      
                                    <div class="col-md-12">
                                        <div class="form-group mb-4">
                                            <label for="exampleFormControlInput1">Open Hours</label>
                                            <input type="text" class="form-control form-control-lg" name="openHours">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group mb-4">
                                            <label for="exampleFormControlInput1">Address</label>
                                            <input type="text" class="form-control form-control-lg" name="address">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group mb-4">
                                            <label for="exampleFormControlInput1">Map Link</label>
                                            <input type="text" class="form-control form-control-lg" name="mapLink">
                                        </div>
                                    </div>
                                    <legend class="border-bottom pb-2 mb-2">Contact Numbers</legend>
                                    <div class="row mb-2">
                                        <div class="col-6"><input name="contact[0][name]" placeholder="Name" type="text" class="form-control form-control-lg" value=""></div>
                                        <div class="col-6"><input name="contact[0][phone]" placeholder="Phone" type="text" class="form-control" value=""></div>
                                    </div>
                                    <div class="row mb-2">
                                        <div class="col-6"><input name="contact[1][name]" placeholder="Name" type="text" class="form-control form-control-lg" value=""></div>
                                        <div class="col-6"><input name="contact[1][phone]" placeholder="Phone" type="text" class="form-control form-control-lg" value=""></div>
                                    </div>
                                    <div class="row mb-2">
                                        <div class="col-6"><input name="contact[2][name]" placeholder="Name" type="text" class="form-control form-control-lg" value=""></div>
                                        <div class="col-6"><input name="contact[2][phone]" placeholder="Phone" type="text" class="form-control form-control-lg" value=""></div>
                                    </div>
                                </div>
                            </div>
                        </div>      
                        <button class="btn btn-success fs-5">Update</button>     
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    function duplicate() {       
        var numItems = $('.doplicated-fields').length
        if(numItems<10){
            $("#duplicated").append($("#duplicator").html())
        }else{
            $("#more-image-button").hide()
        }    
    }
</script>
@endsection