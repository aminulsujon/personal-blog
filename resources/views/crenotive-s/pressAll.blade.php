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
<div class="container mt-5">
    <div class="row">
        <h1 class="text-center mb-5">Press Release</h1>
        <table class="table table-striped">
            <thead>
              <tr class="text-center">
                <th scope="col">Serial</th>
                <th scope="col">Name</th>
                <th scope="col">File</th>
                <th scope="col">Date</th>
              </tr>
            </thead>
            <tbody>
                @php $i=1 @endphp
                @forelse ($contents as $content)
                    <tr class="text-center">
                        <th scope="row">{{$i++}}</th>
                        <td>{{$content->name}}</td>
                        <td>
                            @if(!empty($content->upload[0]['file']))
                            <a class="btn btn-lg btn-primary mb-2" href="{{$websettings['cms_url'].'/'.$content->upload[0]['file']}}" download>Download File</a> 
                            <a class="btn btn-lg btn-warning mb-2" href="{{$websettings['cms_url'].'/'.$content->upload[0]['file']}}" target="_blank">View File</a>       
                            @endif
                        </td>
                        <td>{{$content->created_at}}</td>
                    </tr>
                @empty
                    No Pres Release Found   
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@include($websettings['cms_layout'].'.components.pagesettingcontent')
@endsection