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
<style>
    .shop{
        padding: 35px;
        box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;
    }
    h2 a{
        color: black;
    }
    .event_btn{
        background-image: linear-gradient(310deg,#ff5825,#e9730e,#ff5825);
    }
    .template-need{
        padding:10px 0 !important;
    }
    .shop_border{
        border-right: 2px solid #e9730e;
    }
    .shop_logo{
        display: flex;
        justify-content: center;
        align-items: center;
    }

@media only screen and (max-width: 767px) {
   .shop1{
        padding: 0px;
    }
    .shop_border {
         border-right: 0;
    }   
}
</style>
    <div class="section-padding">
        @include($websettings['cms_layout'].'.components.member_filter')
        <div class="container">
            @include('frontend.components.profile')
        </div>
    </div>
@endsection