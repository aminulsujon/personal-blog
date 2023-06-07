@extends('frontend.layouts.app')
@section('social')
    @include('meta_content_details')
@endsection

@section('schema')
    @include('schema_menu')
    {{-- @include('schema_content') --}}
@endsection
@section('content')
<div class="container">
<section class="section-padding-2">
    <div class="section-headding mb-40 mt-40">
       <h1>{{ $content->meta_heading ?? $content->name }}</h1> 
       <i>Total {{ $content->upload->count() }} photos in this gallery</i>
    </div>
        <div class="row portfolio-full portF" id="MixItUp98FC62" style="">
            <!-- Single -->
            @foreach ($content->upload as $image)
            {{-- @php
                dd($image);
            @endphp --}}
            <div class="col-12 col-lg-8 col-md-8 mb-15 mix image" >           
                <a class="thumbnail" data-rel="lightcase:myCollection:portfolio" href="{{ asset('/images/uploads/large/'.$image->file) }}">             
                    @include('frontend.image_display_dynamic',['item'=>$image,'folder_path'=>'large'])
                    <span class="d-inline-block mt-4">
                        {{ $image->caption ?? ''}}
                    </span>
                </a>
            </div>
            @endforeach 
        </div> 
</section>
</div>
@endsection

