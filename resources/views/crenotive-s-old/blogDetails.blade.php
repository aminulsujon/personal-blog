@extends('frontend.layouts.app')
@section('social')
	<meta name="robots" content="{{ $pagesetting->meta_robots ?? 'index,allow' }}" />
    <title>{{ $pagesetting->meta_title ?? $websettings['cms_sitename'] ?? 'Title' }}</title>
    <meta name="description" content="{{ $pagesetting->meta_description ?? $websettings['cms_sitename'] ?? 'Description' }}" />
    <link rel="canonical" href="{{ $websettings['cms_url'] ?? 'URL' }}/" />
    <meta property="site_name" content="{{ $websettings['cms_sitename'] ?? 'Site Name' }}" />
    <meta property="og:url" content="{{ $websettings['cms_url'] ?? 'URL' }}/" />
    <meta property="og:title" content="{{ $pagesetting->meta_title ?? $websettings['cms_sitename'] ?? 'Title' }}" />
    <meta property="og:description" content="{{ $pagesetting->meta_description ?? $websettings['cms_sitename'] ?? 'Description' }}" />
    <meta property="og:keywords" content="{{ $pagesetting->meta_keywords ?? $websettings['cms_sitename'] ?? 'Keywords' }}" />
    <meta property="og:image" content="{{ $pagesetting['meta_image'] ?? $websettings['cms_assets'].'/image/img.jpg' ?? '/image/img.jpg' }}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="{{ $websettings['cms_sitename'] ?? 'Sitename' }}" />
    <meta name="twitter:creator" content="@ {{ $websettings['cms_author'] ?? 'Creator' }}" />
    <meta property="twitter:url" content="@ {{ $websettings['cms_assets'] ?? 'URL' }}/" />
    <meta property="twitter:title" content="{{ $pagesetting->meta_title ?? $websettings['cms_sitename'] ?? 'Title' }}" />
    <meta property="twitter:description" content="{{ $pagesetting->meta_description ?? $websettings['cms_sitename'] ?? 'Description' }}" />
    <meta property="twitter:keywords" content="{{ $pagesetting->meta_keywords ?? $websettings['cms_sitename'] ?? 'Keywords' }}" />
    <meta property="twitter:image" content="{{ $pagesetting['meta_image'] ?? $websettings['cms_assets'].'/image/img.jpg' ?? '/image/img.jpg' }}" />
@endsection

@section('schema')

<script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "BreadcrumbList",
        "itemListElement": [
        {
            "@type": "ListItem",
            "position": 1,
            "name": "Find Shop",
            "item": "{{ $websettings['cms_url'] }}/shops"
        },{
            "@type": "ListItem",
            "position": 2,
            "name": "Management Committee",
            "item": "{{ $websettings['cms_url'] }}/management-committee"
        },{
            "@type": "ListItem",
            "position": 3,
            "name": "Notice",
            "item": "{{ $websettings['cms_url'] }}/notice"
        },{
            "@type": "ListItem",
            "position": 4,
            "name": "Blogs",
            "item": "{{ $websettings['cms_url'] }}/blogs"
        }]
    }
</script>
@endsection
@section('content')
<section class="breadcrumb-area mt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-content">
                    <h2>{{  $content->name }}</h2>
                    <ul>
                        <li><a href="{{ url('/') }}">Home</a></li>
                        <li> <a href="{{ url('/blog') }}"> Blog</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-padding-2 mt-5">
    <div class="container services-details">
        <div class="row">
            <div class="col-lg-8 mb-30">          
                <div class="mb-30">
                    @include('frontend.image_display_dynamic',['item'=>$content->upload[0],'folder_path'=>'large'])
                </div>
                <div class="meta mb-4">
                    <span><i class="far fa-calendar-alt"></i> 05 April 2023 </span>&nbsp;&nbsp;&nbsp;
                    <span><i class="fas fa-tags"></i> <a href="#">Technology</a></span>
                </div>
                <h2>{{$content->name}}</h2>
                <h4 class="sc_subtitle"><span> {{$content->subtitle ?? ''}} </span></h4>
                <p>{!! $content->description !!}</p>
                @include('frontend.components.tag')
                @include('frontend.components.social_share')
                @include('frontend.components.comment')   
            </div>
            <div class="col-md-4">
                <h1 class="mb-5">Latest Blog</h1>
                @forelse ($contents as $content)
                    <!-- Single -->
                    <div class="col-lg-12 col-md-12 mb-30">
                        <a href="{{ $content->slug }}">
                            <div class="blog-item">
                                <!-- Thumbanil -->
                                <div class="thumbnail">       
                                    @foreach ($content->upload as $item)
                                        @include('frontend.image_display_dynamic',['item'=>$item,'folder_path'=>'large'])
                                    @endforeach
                                    <div class="date">
                                        <span>{{ $content->created_at}}</span>
                                    </div>
                                </div>
                                <!-- Content -->
                                <div class="content">
                                    <h3>{{ $content->name }}</h3>
                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- Single ends -->
                @empty
                    No Blog Found
                @endforelse
            </div>
        </div>   
    </div>
</section>
@endsection