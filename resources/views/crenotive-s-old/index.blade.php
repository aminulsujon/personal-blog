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

	<!-- Start Hero Section -->
	<section class="hero-area">	
		{{-- slider starts --}}				
			<div class="home-demo">
				<div class="owl-carousel owl-theme">
					@foreach($sliders as $slider)		
						<div class="item">
							@foreach ($slider->upload as $item)
								<a href="javascript:void(0);" class="w-100">
									<picture>
										@include('frontend.image_display_dynamic',['item'=>$item,'folder_path'=>'large'])
									</picture>				
								</a> 
							@endforeach 
						</div>
					@endforeach
				</div>
			</div>
		{{-- slider ends --}}
		<style>
			#marquee-cont {
			background: #f4f4f4;
			margin-top:10px;
			}
			#marquee-cont marquee {
			margin-top: 5px;
			}
			#marquee-news {
			
			background: #1174A8;
			padding: 5px;
			}
			#ticker-title{
			border:none;
			padding:5px 20px;
			background:#1174A8;
			color:white;
			}
			#ticker-title:focus{
			outline:none;
			}
		</style>
		
		<div class="container">
			<div id="marquee-cont">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="50px" style="background:#1174A8;">
					  <button id="ticker-title">BCS:</button>
					</td>
					<td id="marquee">
					  <marquee onmouseover="this.stop();" onmouseout="this.start();" id='scroll'>
						{{ $welcome->welcome_ticker ?? '' }}
					  </marquee>
					</td>
				  </tr>
				</table>
			</div>
			<div class="row">
				<div class="col-lg-10 offset-lg-1 text-center mt-5">
					<h3 class="fs-1 text-white">Welcome To The</h3>
					<div class="hero-caption pb-200">			
						<h2> {{ $welcome->text_one ?? '' }}</h2>
						<p class="text-dark">{{ $welcome->text_two ?? '' }}</p>
					</div>
				</div>
			</div>
		</div>
		<div class="custom-shape-divider-bottom-1638549227">
			<svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
				<path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
			</svg>
		</div>
		</section>
		<!-- End Hero Section -->
		<!-- Header Counter Area -->
		<section class="h_counter_area mb-5">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<div class="row h_counter_section">
							<!-- Single -->
							<div class="col-md-4 position-relative">
								<div class="counter_item_h">
									<div class="title">
										<h2 class="counter text-gradient">154</h2>
									</div>
									<h5>SHOPS</h5>
									
									  <hr class="vertical dark">
								</div>	
							</div>
							<!-- Single -->
							<div class="col-md-4 position-relative">
								<div class="counter_item_h">
									<div class="title">
										<h2 class="counter text-gradient">50,00,000</h2>
									</div>
									<h5>ORIGINAL PRODUCTS
									</h5>
									
									  <hr class="vertical dark">
								</div>	
							</div>
							<!-- Single -->
							<div class="col-md-4">
								<div class="counter_item_h">
									<div class="title">
										<h2 class="counter text-gradient">10,000</h2>
									</div>
									<h5>BRANDS
									</h5>								
								</div>	
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Header Counter Area -->
		@include($websettings['cms_layout'].'.components.member_filter')
		<!-- Start notice That Area -->
		@include('frontend.components.notice')
		<!-- End notice That Area -->
		{{-- team starts --}}
		@include('frontend.components.committee')
		{{-- team ends --}}
		<!-- Start analytics Area -->
		@if (!empty($pages))
			<section class="pb-70 pt-20">
				<div class="container">
					<div class="row">
						@foreach ($pages as $page)							
							<!-- Content -->
							<div class="col-lg-6 align-self-center">
								<div class="analytics-toll-content">
									<h2 class="text-gradient">{{ $page->name }}</h2>
									{{-- <div class="analytics-toll-img mb-4">
										<img src="{{ $page->upload[0]['url'] }}" alt="img">					
									</div>								 --}}
									<p class="content">{!!Str::limit(strip_tags($page->description), 200, $end='...')!!}
									</p>							
									<a class="button-1 mt-5" href="{{ $page->slug }}">Learn More</a>
								</div>
							</div>
						@endforeach	
					</div>
				</div>
			</section>
		@endif		
		<!-- End analytics Area -->
		<!-- Start event section -->
		@include('frontend.components.event')
		<!-- End event section -->
		{{-- image gallery starts --}}
		@include('frontend.components.home_gallery')
		{{-- image gallery ends --}}
		{{-- blog starts --}}
		@include('frontend.components.home_blog')
		{{-- blog ends --}}
		<!-- Start Template Need Area -->
		<section class="template-need mt-5" style="background-image:url('assets/img/cta-1.png');">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<h4>Get a Quotation!</h4>
						<h2>Get price for your desired product or services</h2>
					</div>
					<div class="col-lg-6 align-self-center">
						<a class="button-2 text-right" href="get-a-quotation">Get a Quotation now</a>
					</div>
				</div>
			</div>
		</section>
		<!-- End Testimonial Area -->
		<!-- Start Latest news Area -->
		@include('frontend.components.home_news')
		<!-- End Latest news Area -->
@endsection

