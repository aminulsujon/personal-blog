@extends('frontend.layouts.app')
@section('content')
{{-- <div class="container mt-5">
    <div class="row">
        <h1 class="text-center mb-5">All Events</h1>
    
        @forelse ($events as $event)
            <!-- Single -->
            <div class="col-lg-4 col-md-6 mb-30">
                <a href="event/{{ $event->id }}">
                    <div class="blog-item">
                        <!-- Thumbanil -->
                        <div class="thumbnail">       
                                <img src="{{ $event->logo }}" alt="img">
                        </div>
                    </div>
                </a>
            </div>
             <!-- Single ends -->
        @empty
            No News Found
        @endforelse
    </div>
</div> --}}
<div class="container mt-5">
    <div class="row">
        @forelse ($events as $event)
        <div class="col-lg-4 col-md-6 mb-30">
            <a href="event/{{ $event->id }}">
                <div class="pricing-item ">
                    <div class="event-image mb-4 text-center">
                        <img src="{{ $event->logo }}" alt="">
                    </div>										
                <h2 class="mb-4">সিটি আইটি মেগা ফেয়ার ২০২৩</h2>
                বি সি এস কম্পিউটার সিটিতে (আইডিবি ভবন) দেশের বৃহত্তম কম্পিউটার মেলা "সিটি আইটি মেগা ফেয়ার ২০২২" আয়োজনে অনলাইন প্রতিযোগিতায় যারা বিজয়ী হয়েছেন সকল বিজয়ীদেরকে আনুষ্ঠানিক ভাবে পুরষ্কার প্রদান করা হলো....
                </div>
            </a>
        </div>
        @empty
         No News Found
        @endforelse
    </div>
</div>
@endsection