@extends('frontend.template-cat.layout')
@section('social')
    <title>{{ $content->meta_title ?? $content->name }}</title>
    <meta name="description" content="{{ $content->meta_description ?? $content->summary  ?? $content->description ?? $content->name }}" />
    <link rel="canonical" href="{{ $websettings['cms_url'] }}/{{ $content->slug }}" />
    <meta property="site_name" content="{{ $content->meta_title ?? $content->name }}" />
    <meta property="og:url" content="{{ $websettings['cms_url'] }}" />
    <meta property="og:title" content="{{ $content->meta_title ?? $content->name }}" />
    <meta property="og:description" content="{{ $content->meta_description ?? $content->summary  ?? $content->description ?? $content->name }}" />
    <meta property="og:keywords" content="{{ $content->meta_keywords ?? $content->name }}" />
    <meta property="og:image" content="{{ $websettings['cms_assets'] }}/image/img.jpg" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@ {{ $websettings['cms_sitename'] }}" />
    <meta name="twitter:creator" content="@ {{ $websettings['cms_author'] }}" />
    <meta property="twitter:url" content="{{ $websettings['cms_assets'] }}/image/img.jpg" />
    <meta property="twitter:title" content="{{ $content->meta_title ?? $content->name }}" />
    <meta property="twitter:description" content="{{ $content->meta_description ?? $content->summary  ?? $content->description ?? $content->name }}" />
    <meta property="twitter:keywords" content="{{ $content->meta_keywords ?? $content->name }}" />
    <meta property="twitter:image" content="{{ $websettings['cms_assets'] }}/image/img.jpg" />
@endsection

@section('schema')
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "NewsArticle",
      "headline": "{{ $content->name }}",
      "image": [
        "",
        ""
       ],
      "datePublished": "{{ $content->created }}",
      "dateModified": "{{ $content->modified }}",
      "author": [{
          "@type": "Person",
          "name": "{{ $websettings['cms_author'] }}",
          "url": "{{ $websettings['cms_devlink'] }}"
        }]
    }
    </script>
@endsection

@section('content')
    <h5>Content Details</h5>
    <h1>{{ $content->name }}</h1>
    <div>{{ $content->description }}</div>
@endsection