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
	<style>
		#marquee-cont {background:#f4f4f4;margin-top:10px;}#marquee-cont marquee{margin-top:5px;}#marquee-news{background:#1174A8;padding:5px;}#ticker-title{border:none;padding:5px 20px;background:#1174A8;color:white;}#ticker-title:focus{outline:none;}

		@media only screen and (min-width: 1201px) {
			.home-demo{
				height: 529px;
			}
		}
		@media only screen and (min-width: 481px) and (max-device-width: 768px) {
			.home-demo{
				height: 425px;
			}
		}
		@media only screen and (min-width: 769px ) and (max-device-width: 1024px) {
			.home-demo{
				height: 370px;
			}
		}
		@media only screen and (min-width: 1025px  ) and (max-device-width: 1200px) {
			.home-demo{
				height: 345px;
			}
		}
		@media only screen and (max-width: 767px) {
			.home-demo{
				height: 315px;
			}
		}
		@media only screen and (min-width: 320px) {
			.home-demo{
				height: 320px;
			}
		}
		
		/* Extra small devices (phones, 600px and down) */
		@media only screen and (max-width: 600px) {
			.home-demo{
				height: 115px;
			}
		}
		
		/* Small devices (portrait tablets and large phones, 600px and up) */
		@media only screen and (min-width: 600px) {
			.home-demo{
				height: 280px;
			}
		}
	
		/* Large devices (laptops/desktops, 992px and up) */
		@media only screen and (min-width: 992px) {
			.home-demo{
				height: 325px;
			}
		}
		
		/* Extra large devices (large laptops and desktops, 1200px and up) */
		@media only screen and (min-width: 1200px) {
			.home-demo{
				height: 529px;
			}
		}

	</style>
@endsection
@section('content')

	<!-- Start Hero Section -->
	<section class="hero-area">	
		<!--  slider starts  -->				
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
		<!--  slider ends  -->
		@include($websettings['cms_layout'].'.components.home_welcome')
		
	</section><!-- End Hero Section -->
	
	<!-- Header Counter Area -->
	@include($websettings['cms_layout'].'.components.home_counter')		
	@include($websettings['cms_layout'].'.components.member_filter')
	<!-- Start notice That Area -->
	@include($websettings['cms_layout'].'.components.notice')	
	{{-- team starts --}}
	@include('frontend.components.committee')
	{{-- team ends --}}
	<!-- Start analytics Area -->
	@if (!empty($pages))
		<section class="pb-20 pt-20">
			<div class="container">
				<div class="row">
					@foreach ($pages as $page)							
						<!-- Content -->
						<div class="col-lg-6 align-self-center">
							<div class="analytics-toll-content">
								<h2 class="text-gradient">{{ $page->name }}</h2>
									<div class="analytics-toll-img mb-4">
										<img src="{{ $page->upload[0]['url'] }}" alt="img">					
									</div>								
								<p class="content">{!!Str::limit(strip_tags($page->description), 200, $end='...')!!}
								</p>							
								<a class="button-1 mt-5 mb-5" href="{{ $page->slug }}">Learn More</a>
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

