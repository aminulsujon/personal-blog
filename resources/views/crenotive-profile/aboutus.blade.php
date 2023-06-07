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
    
<section class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-content">
                    <h2>About Us</h2>
                    <ul>
                        <li><a href="{{ URL::to('/') }}">Home</a></li>
                        <li>About Us</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 align-self-center">
                <div class="row">
                    <div class="col-sm-6 mb-20">
                        <div class="about_item_box">
                            <div class="icon text-gradient">
                                <i class="fas fa-money-check-alt"></i>
                            </div>
                            <h4>Mission</h4>
                            <p>Your text goes here...</p>
                        </div>
                    </div>
                    <div class="col-sm-6 mb-20">
                        <div class="about_item_box">
                            <div class="icon text-gradient">
                                <i class="fas fa-box"></i>
                            </div>
                            <h4>Vision</h4>
                            <p>Your text goes here...</p>
                        </div>
                    </div>
                    <div class="col-sm-6 mb-20">
                        <div class="about_item_box">
                            <div class="icon text-gradient">
                                <i class="fas fa-fighter-jet"></i>
                            </div>
                            <h4>Message from President</h4>
                            <p>Your text goes here...</p>
                        </div>
                    </div>
                    <div class="col-sm-6 mb-20">
                        <div class="about_item_box">
                            <div class="icon text-gradient">
                                <i class="fas fa-chalkboard-teacher"></i>
                            </div>
                            <h4>Your text goes here...</h4>
                            <p>Your text goes here...</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 offset-lg-1">
                <div class="about-img-ab">
                    <div class="thumb">
                        <img src="assets/img/about.jpg" alt="about">
                    </div>
                    <div class="con">
                        <h4>About BCS Computer City </h4>
                        <p> Hello Every one. This is the BCS computer City Official Page. From Now I am Here To Answer your every</p>
                        <p> Text from admin panel goes here.... </p>
                    </div>
                </div>
            </div>
        </div>
        @include('frontend.components.social_share')
    </div>
</section>

<section class="counter2-area" style="display:none;">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2">
                <div class="row">
                    <!-- Single -->
                    <div class="col-lg-4 col-sm-6 mb-30">
                        <div class="counter2-item">
                            <div class="title">
                                <h2 class="counter text-gradient">255</h2>
                                <h3 class="text-gradient">K</h3>
                            </div>
                            <p>Customers</p>
                        </div>
                    </div>
                    <!-- Single -->
                    <div class="col-lg-4 col-sm-6 mb-30">
                        <div class="counter2-item">
                            <div class="title">
                                <h2 class="counter text-gradient">51</h2>
                                <h3 class="text-gradient">K</h3>
                            </div>
                            <p>Downloads</p>
                        </div>
                    </div>
                    <!-- Single -->
                    <div class="col-lg-4 col-sm-6 mb-30">
                        <div class="counter2-item">
                            <div class="title">
                                <h2 class="counter text-gradient">99</h2>
                                <h3 class="text-gradient">%</h3>
                            </div>
                            <p>Happy users</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include($websettings['cms_layout'].'.components.pagesettingcontent')
</section>


@endsection