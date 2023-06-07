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
        .event_content{
           
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            margin-bottom: 25px;
            padding: 20px;
        }
        a{
            color: #191919;
        }
        .card{
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
        }
        .event_btn{
            background-image: linear-gradient(310deg,#ff5825,#e9730e,#ff5825); 
        }
    </style>
    <div class="container mt-5">
        <div class="section-headding mb-40 mt-40">
            <h2>All Events</h2> 
            @forelse ($events as $event)
            <a class="d-inline-block text-dark fw-500 text-decoration-none bg-white px-2 py-2 me-3 my-2 c-ga xn" href="{{ $event->slug }}" role="button" style="box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;">{{ $event->title }}</a> 
            @empty
            No Event Found
            @endforelse    
        </div>
        <div class="row">      
            <div class="col-md-8">
                @forelse ($events as $event)
                <div class="event_content">
                    <div class="row">             
                        <div class="col-md-8">
                                <div style="font-size: 14px;">{{ date('D, d M Y',strtotime($event->start_date)) ?? '' }} - {{ date('D, d M Y',strtotime($event->end_date)) ?? ''}}</div>
                                <div class="mt-2"> 
                                    <a href="{{ $event->slug }}"><b>{{ $event->title }}</b></a>  
                                </div>
                                @if(!empty($event->location))                                         
                                    <div style="font-size: 14px;" class="mt-2">
                                        <svg width="20px" height="20px" viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg"><path fill="#000000" d="M512 928c23.936 0 117.504-68.352 192.064-153.152C803.456 661.888 864 535.808 864 416c0-189.632-155.84-320-352-320S160 226.368 160 416c0 120.32 60.544 246.4 159.936 359.232C394.432 859.84 488 928 512 928zm0-435.2a64 64 0 1 0 0-128 64 64 0 0 0 0 128zm0 140.8a204.8 204.8 0 1 1 0-409.6 204.8 204.8 0 0 1 0 409.6z"/></svg> {{ $event->location}}
                                    </div>
                                @endif
                        </div>
                        <div class="col-md-4">
                            <div class="event_image text-right mb-3">
                                <a href="{{ $event->slug }}">
                                    <img src="{{ $event->logo }}" alt="{{ $event->title }}" height="80" width="80">
                                </a>
                            </div>
                        </div>         
                    </div>  
                    <div class="event_description mt-2">
                        <p>{!!Str::limit($event->description, 200, $end='...')!!}</p>                         
                    </div> 
                  <a href="{{ $event->slug }}" class="btn event_btn mt-2 fs-4 text-white"> See Details</a>
                </div> 
                @empty
                No Event Found
                @endforelse      
            </div>
        </div>
        <div class="text-center">
            {{ $events->links() }}
        </div>
    </div>
@endsection