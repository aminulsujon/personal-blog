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
<section class="section-padding">
    <div class="container">
        <div class="row mb-20">
            <!-- Single -->
            <div class="col-lg-4 col-sm-6 mb-30">
                <div class="about_item_box text-center">
                    <div class="icon text-gradient">
                        <i class="bi bi-envelope-open-fill"></i>
                    </div>
                    <h4>Email</h4>
                    <a href="#">bcs.city@gmail.com</a>
                </div>
            </div>
            <!-- Single -->
            <div class="col-lg-4 col-sm-6 mb-30">
                <div class="about_item_box text-center">
                    <div class="icon text-gradient">
                        <i class="bi bi-telephone-inbound-fill"></i>
                    </div>
                    <h4>Phone</h4>
                    <a href="#">01928-028742</a>   
                </div>
            </div>
            <!-- Single -->
            <div class="col-lg-4 col-sm-6 mb-30">
                <div class="about_item_box text-center">
                    <div class="icon text-gradient">
                        <i class="bi bi-geo-alt-fill"></i>
                    </div>
                    <h4>Location</h4>
                    <a href="https://goo.gl/maps/SDks3t4HfnFaRTpMA" target="_blank">BCS Computer City, IDB Bhaban, Dhaka 1207</a>
                </div>
            </div>
        </div>
        <div class="row mb-40">
            <div class="col-lg-8 offset-lg-2 text-center">
                <div class="section-headding">
                    <h2>Get In Touch.</h2>
                    <p>The powerful and flexible theme for all kinds of businesses</p>
                </div>
            </div>
        </div>
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        @if(session()->has('success'))
            <div class="alert alert-success">
                {{ session()->get('success') }}
            </div>
        @endif
        <div class="row">
            <div class="col-lg-7 offset-lg-2">
                <div class="contact-form">
                    <form action="{{ route('contact.store') }}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="single-input">
                                    <input type="text" name="name" placeholder="Your Name" required>
                                    <i class="fas fa-user"></i>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="single-input">
                                    <input type="email" name="email" placeholder="Your Email">
                                    <i class="far fa-envelope"></i>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="single-input">
                                    <input type="text" name="phone" placeholder="Your Phone">
                                    <i class="fas fa-mobile-alt"></i>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="single-input">
                                    <input type="text" name="subject" placeholder="Your Subjects">
                                    <i class="fas fa-file-alt"></i>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="single-input">
                                    <textarea name="message" placeholder="Write Message" spellcheck="false"></textarea>
                                    <i class="fas fa-pen"></i>
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="submit">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="row mb-40 mt-60">
            <div class="col-lg-8 offset-lg-2 text-center">
                <div class="section-headding">
                    <h2>Find Us On Google Map.</h2>
                </div>
            </div>
        </div>
        <div class="google-map mt-3 mb-3">
            <a href="https://goo.gl/maps/eBtE2LDuBKRom6Ru8" target="_blank">
                <img src="http://127.0.0.1:8000/images/uploads/large/bcs-google-map.png" alt="">
            </a>
        </div>
        @include('frontend.components.social_share')
    </div>
    @include($websettings['cms_layout'].'.components.pagesettingcontent')
</section>
@endsection
