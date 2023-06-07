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
<section class="section-padding-2 mt-70">
    <div class="container services-details">
        <div class="row">
            <div class="col-lg-6 align-self-center mb-30">
                <h4 class="sc_subtitle"><span>{{  $content->subtitle ?? ''  }} </span></h4>
                <h2 class="sc_title text-gradient">{{  $content->name }}</h2>          
                <p>{!! $content->description !!}</p>
            </div>
            <div class="col-lg-6 mb-30">
                {{-- @php
                    dd($content->upload[0]['url']);
                @endphp --}}
                @if (!empty($content->upload[0]['url']))
                  <img src="{{ $content->upload[0]['url']}}" alt="{{  $content->name ?? '' }}">
                @endif
               
            </div>
        </div>
    </div>
</section>
@endsection