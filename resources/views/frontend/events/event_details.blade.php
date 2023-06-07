
@extends('frontend.layouts.app')
@section('content')
<div class="container mt-5">
    <div class="col-lg-12 order-lg-first">
        <div class="portfolio-details-content">
            <div class="thumbnail mb-20">
                <img class="w-100" src="{{asset($event->banner)  }}" alt="img">
            </div>
            <p>{!! $event->description !!}</p>
            <div class="row">
                <div class="col-md-6 mb-20">
                    <img src="{{ asset($event->logo) }}" alt="img">
                </div>
                <div class="col-md-6 mb-20">
                    <img src="{{ asset($event->banner) }}" alt="img">
                </div>
            </div>
        </div>
    </div>
</div>
@endsection