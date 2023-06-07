<!DOCTYPE html>
<html  class="no-js" lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
    
    @include('frontend.head')
    @yield('social')
    @include('frontend.schema')
    @yield('schema')
    <style>
    /*reset*/ html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {margin: 0;padding: 0;border: 0;font-size: 100%;font: inherit;vertical-align: baseline;}
    article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {display: block;}
    body {line-height: 1.5;}
    ol, ul {list-style: none;}
    blockquote, q {quotes: none;}
    blockquote:before, blockquote:after, q:before, q:after {content: '';content: none;}
    table {border-collapse: collapse;border-spacing: 0;}
    /*customize*/ body{width:90%;margin:20px auto;}
    img{max-width: 100%;height:auto}
    h1,h2,h3,h4,h5,h6{font-weight:bold}
    .header{line-height:1.2}
    .header,h1 a{display: flex;align-items: center;font-size: 1.5rem;font-weight: bold;}
    .profile-image {border-radius: 50%;border: 2px solid #ddd;padding: 3px;}
    h1 a img {margin-right: 20px}
    h1 a span small {font-size: 1rem}
    a{text-decoration:none;color:#000}
    section h2{font-size:1.5rem;border-bottom: 1px solid #ddd;margin-bottom:15px;padding-bottom:15px}
    h3,h4,h5{font-size:1.5rem}
    .header{border-bottom:1px solid #ddd;display:flex;justify-content:space-between;}
    header h2{font-size:1.2rem}
    header h3{color:#777}
    header h1,header h2,header h3,header section{margin-bottom:10px}
    header section{margin-top:10px}
    .header section div span,.footer section div span{background:#ddd;padding:5px 10px;display:inline-block;border-radius:10px;margin-bottom:10px}
    main section{padding:10px 0}
    main section figure {display:inline-block;box-shadow: 2px 2px 5px 2px #ddd;border: 1px solid #ddd;padding:.5rem;text-align: center;margin:0 1rem 1rem 0}
    main section figure img{margin-bottom: 15px;max-height: 100px;}
    .images a{display:inline-block;border:1px solid #ddd;padding:10px;margin-right:20px;max-width:400px}
    .faq{margin-bottom:20px}
    .faq header{padding-bottom: 15px;}
    .faq main h3{padding:10px 0;color:#666;font-size:120%;}
    sup{font-size: 70%;vertical-align: super;}
    footer{margin-top:20px;border-top: 1px solid #ddd;padding-top: 15px;}
    footer ul li{margin-bottom:5px}
    .bb{border-bottom:1px solid #ddd}
    .mb-1{margin-bottom:1rem}
    .pb-1{padding-bottom:1rem}
    .text-ash{color:#666}
    
    @media screen and (max-width: 480px) {
        .header{display: flex;align-items: center;font-size: 1.5rem;font-weight: bold;}
        .header section{align-items: right;display:flex}
        .profile-image{width:50px}
        h1 a img{margin-right:5px}
        main section figure{width:96%;padding:10px 2%}
    }

    </style>
</head>
<body>
	@include($websettings['cms_layout'].'.layouts.header')
    {{-- content starts--}}
    @yield('content')
    {{-- content ends--}}
    @include($websettings['cms_layout'].'.layouts.footer')
	<script>
    if ('lazyload' in HTMLImageElement.prototype) {
        const images = document.querySelectorAll('img[loading="lazy"]');
        images.forEach(img => {
        img.src = img.dataset.src;
        });
    } else {
        // Dynamically import the LazySizes library
        const script = document.createElement('script');
        script.src =
        'https://cdnjs.cloudflare.com/ajax/libs/lazysizes/5.1.2/lazysizes.min.js';
        document.body.appendChild(script);
    }
    </script>
</body>
</html>