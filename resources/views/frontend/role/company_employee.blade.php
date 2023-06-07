@extends('frontend.layouts.app')
@section('content')
<section class="section-padding">
    <div class="container">
        <div class="card-body">
            <p class="card-title"> Edit Employee</p>
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
                                            <label for="exampleFormControlInput1">employee Name</label>
                                            <input type="text" class="form-control form-control-lg" name="name" required>
                                        </div>
                                    </div>                      
                                    <div class="col-md-12">
                                        <div class="form-group mb-4">
                                            <label for="exampleFormControlInput1">Designation</label>
                                            <input type="text" class="form-control form-control-lg" name="designation">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group mb-4">
                                            <label for="exampleFormControlInput1">Profile Photo (URL)</label>
                                            <input type="text" class="form-control form-control-lg" name="profilePhoto">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group mb-4">
                                            <label for="exampleFormControlInput1">Contact</label>
                                            <input type="text" class="form-control form-control-lg" name="contact">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group mb-4">
                                            <label for="exampleFormControlInput1">Email</label>
                                            <input type="email" class="form-control form-control-lg" name="email">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group mb-4">
                                            <label for="exampleFormControlInput1">Website</label>
                                            <input type="text" class="form-control form-control-lg" name="website">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group mb-4">
                                            <label for="exampleFormControlTextarea1">About Me</label>
                                            <textarea class="form-control form-control-lg" name="about" rows="5"></textarea>
                                        </div>
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