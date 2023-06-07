@extends('frontend.layouts.app')
@section('content')
<!-- Start Features That Area -->
<section class="section-padding-2">
    <div class="container">
        <!-- Section Headding -->
        <div class="row mb-40 mt-40">
            <div class="col-lg-8 offset-lg-2 text-center">
                <div class="section-headding">
                    <h2>All Notice</h2>
                </div>
            </div>
        </div>
        <div class="row">
            @if (!empty($contents))
                @foreach ($contents as $content)		
                    <!-- Single -->
                    <div class="col-lg-4 col-sm-6 mb-30">
                        <a href="notice/{{ $content->id }}">
                        <div class="info-box-s1">
                            <div class="icon">
                                <img src="{{ $content->upload[0]['url'] }}" alt="code">
                            </div>
                            <div class="content">
                                <h4 class="text-gradient"> {{ $content->name }} </h4>
                            <p>	{!!Str::limit($content->description, 55, $end='...')!!}</p>
                            </div>
                        </div>
                    </a>
                    </div>
                @endforeach					
            @endif
        </div>
    </div>
</section>
<!-- End Features That Area -->
@endsection