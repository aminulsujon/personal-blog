@extends('frontend.layouts.app')
@section('content')
<div class="container mt-5">
    <div class="row">
        <h1 class="text-center mb-5">All News</h1>
        @forelse ($contents as $content)
            <!-- Single -->
            <div class="col-lg-4 col-md-6 mb-30">
                <a href="news/{{ $content->id }}">
                    <div class="blog-item">
                        <!-- Thumbanil -->
                        <div class="thumbnail">       
                                <img src="{{ $content->upload[0]['url'] }}" alt="img">
                            <div class="date">
                                <span>{{ $content->created_at}}</span>
                            </div>
                        </div>
                        <!-- Content -->
                        <div class="content">
                            <h3>{{ $content->name }}</h3>
                            <p>{{ $content->description }}</p>
                        </div>
                    </div>
                </a>
            </div>
             <!-- Single ends -->
        @empty
            No News Found
        @endforelse
    </div>
</div>
@endsection