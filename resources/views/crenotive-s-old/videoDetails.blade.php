@extends('frontend.layouts.app')
@section('content')
<div class="container">
<section class="section-padding-2">
    @if (!empty($content->upload))
    <div class="section-headding mb-40 mt-40">
       <h2>Total Found {{ $content->upload->count() }}</h2> 
       <p>{{ $content->name }}</p> 
    </div>
        <div class="row portfolio-full portF" id="MixItUp98FC62" style="">
            <!-- Single -->  
            @foreach ($content->upload as $item)
                <div class="col-12 col-lg-4 col-md-4 mb-15 mix image" >   
                    @php
                        $link= $item->video;
                        $embed = (explode("/", $link));
                    @endphp
                    <iframe width="400" height="315" src="https://www.youtube.com/embed/{{ $embed[3] }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </div>
            @endforeach       
        </div> 
        @endif
</section>
</div>
@endsection

