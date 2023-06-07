@extends('frontend.layouts.app')
@section('content')
<section class="breadcrumb-area" style="background-image: url('{{ asset('assets/img/breadcrumb.jpg') }}');">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-content">
                    <h2>{{ $content->name }}</h2>
                    <ul>
                        <li><a href="{{ url('/') }}">Home</a></li>
                        <li> <a href="{{ url('/notice') }}"> Notice </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-padding-2 mt-5">
    <div class="container services-details">
        <div class="row">
            <div class="col-lg-6 align-self-center mb-30">
                <h4 class="sc_subtitle"><span> {{  $content->subtitle ?? ''  }} </span></h4>
                <h2 class="sc_title text-gradient">{{  $content->name }}</h2>          
                <p>{!! $content->description !!}</p>
            </div>
            <div class="col-lg-6 mb-30">
                <img src="{{ asset('assets/img/1.png') }}" alt="serices">
            </div>
        </div>
    </div>
</section>
@endsection