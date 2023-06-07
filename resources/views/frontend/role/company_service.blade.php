@extends('frontend.layouts.app')
@section('content')
<section class="section-padding">
    <div class="container">
        <div class="card-body">
            <p class="card-title"> Edit Service</p>
            <div class="row">
                @include('frontend.member_sidebar')
                <div class="col-md-10">
                    <form class="" action="#"  method="post" enctype="multipart/form-data">
                        @csrf
                        <input name="editing_redirection" type="hidden" class="form-control" value="company">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="position-relative form-group mb-4 mt-2">
                                    <input name="name" type="text" class="form-control form-control-lg" placeholder="Service Name by Company ">
                                </div>
                            </div>
                        </div>      
                        @if(!empty($gallery->upload[0]['id']))   
                            @foreach($gallery->upload as $galleryImage)          
                            <div class="border mb-4">
                                <div class="row">
                                    <div class="col-3"><img src="{{ asset($galleryImage->file ?? '') }}" class="img-fluid"></div>
                                    <div class="col-9"><b>{{$galleryImage->name}}</b><br>
                                        {{$galleryImage->caption}}</div>
                                </div>
                            </div>
                            @endforeach
                        @else
                            <div class="row doplicated-fields mb-4">
                                <div class="col-md-12">
                                    <div class="border p-2 form-group bg-light">
                                        <div class="mb-2 text-danger"> Image Size Must Be 1080px X 1080px</div>
                                        <input name="file[]" type="file" class="form-control form-control-lg mb-4" required>
                                        <input name="name[]" type="text" placeholder="Service Name" class="form-control form-control-lg mb-4">
                                        <textarea name="caption[]" placeholder="Service Link" class="form-control form-control-lg"></textarea>
                                    </div>
                                </div>
                            </div>
                        @endif
                        <div id="duplicator"></div>         
                        <span id="more-image-button" class="btn btn-success mt-3 mb-3" onclick="duplicate()">Add Another Service</span><br>
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