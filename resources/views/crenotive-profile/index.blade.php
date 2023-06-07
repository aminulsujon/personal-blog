@extends($websettings['cms_layout'].'.layouts.app')
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
	@include('schema_menu')
@endsection
@section('content')

<main>
    <section>
      <h2>Professional Achievements</h2>
      <figure>
        <a target="_blank" title="Certification by ScrumAlliance" href="https://www.scrumalliance.org/">
          <picture>
            <img src="images/seal-csm-100x100.webp" alt="CSM Badge">
          </picture>
        </a>
        <figcaption>CSM<sup>®</sup> Certification Badge by Scrum Alliance, 2022</figcaption>
      </figure>
      <figure>
        <a target="_blank" title="LinkedIn Skill Badge: Front-End Development" href="https://www.linkedin.com/in/aminulsujon/">
          <picture>
            <img loading="lazy" class="lazyload" data-src="images/linkedin-fed.jpg" alt="LinkedIn Skill Badge: Front-End Development">
          </picture>
        </a>
        <figcaption>LinkedIn Skill Badge: Front-End Development</figcaption>
      </figure>
      <figure>
        <a target="_blank" title="LinkedIn Skill Badge: Search Engine Optimization (SEO)" href="https://www.linkedin.com/in/aminulsujon/">
          <picture>
            <img loading="lazy" class="lazyload" data-src="images/linkedin-seo.jpg" alt="LinkedIn Skill Badge: Search Engine Optimization (SEO)">
          </picture>
        </a>
        <figcaption>LinkedIn Skill Badge: Search Engine Optimization (SEO)</figcaption>
      </figure>
      <figure>
        <a target="_blank" title="LinkedIn Skill Badge: Cascading Style Sheets (CSS)" href="https://www.linkedin.com/in/aminulsujon/">
          <picture>
            <img loading="lazy" class="lazyload" data-src="images/linkedin-css.jpg" alt="LinkedIn Skill Badge: Cascading Style Sheets (CSS)">
          </picture>
        </a>
        <figcaption>LinkedIn Skill Badge: Cascading Style Sheets (CSS)</figcaption>
      </figure>
    </section>

    <section class="faq">
      <header>
        <h2>FAQ About Scrum Master</h2>
        <blockquote>
          A Scrum Master is a professional who leads a team using Agile project management through the course of a project. A Scrum Master facilitates all the communication and collaboration between leadership and team players to ensure a successful outcome.
        </blockquote>
      </header>
      <main>
        
      
        <h3>Is Scrum Master a stressful job?</h3>
        <div>
          <p>Since the entire effectiveness of the project ultimately lies in the hands of the Scrum Master, the job might get overwhelming for some. Contrary to the popular belief though, the work of a Scrum Master is not a stressful job.</p>
        </div>
        <h3>How much is Scrum Master course fee?</h3>
        <div>
          <p>The Scrum Alliance offer various course on Scrum include the Advanced Certified ScrumMaster (ACSM) and Certified Scrum Professional ScrumMaster (CSP-SM) certifications. Cost: Depending on provider, ranges from $300 to $400</p>
        </div>

        <h3>Why are scrum masters highly paid?</h3>
        <div>
          <p>Why Are Scrum Masters Paid So Much? Scrum Masters are paid well because they play a critical role in helping teams and organizations achieve Agile success. They are responsible for facilitating scrum ceremonies, coaching sections on Agile principles, and assisting teams in overcoming challenges.</p>
        </div>

        <h3>What is the salary of a Scrum Master in Bangladesh?</h3>
        <div>
          <p>In Bangladesh for last few years, The software industry looking for Scrum Masters. The estimated salary for a Scrum Master is BDT 80,000 - 2,50,000 per month in the Dhaka, Bangladesh area. This number represents the median, which is the midpoint of the ranges from our proprietary Total Pay Estimate model and based on salaries collected from different sources.</p>
        </div>
        <h3>Scrum Certification, Are scrum masters worth it?</h3>
        <div>
          <p>A certification is always benifitable in professional life. A scrum master certification will increase your job opportunities and make you stand out compared to non-certified peers. It enhances your skills to drive organizational change and meet company goals while showcasing your agile approach.</p>
        </div>
        <h3>Who is the Bangladeshi <a target="_blank" href="https://www.scrumalliance.org/community/profile/mrahman">representative of Scrum Alliance?</a></h3>
        <div>
          <p><a target="_blank" href="http://www.mizanurrahman.com/">Mizanur Rahman</a> is a technology enthusiast and problem solver, He is a Certified Scrum Master (CSM) and the first Certified Scrum Professional (CSP) from ScrumAlliance in Bangladesh.</p>
        </div>
      </main>
    </section>

    <section class="images">
      <a target="_blank" href="https://www.aminulsujon.com/images/aminul-sujon-scrum-master-dhaka-bangladesh.jpg">
        <img loading="lazy" class="lazyload" data-src="https://www.aminulsujon.com/images/aminul-sujon-scrum-master-dhaka-bangladesh-400.jpg" alt="Certified scrum master Dhaka Bangladesh" title="Certified scrum master Dhaka Bangladesh">
        <p>
          Aminul Sujon at Workshop on Scrum and Agile<br> 
          Dhaka, Bangladesh.
        </p>
    </a>
      <a target="_blank" href="https://www.aminulsujon.com/images/aminul-sujon-scrum-master-dhaka-profile.jpg">
          <img loading="lazy" class="lazyload" data-src="https://www.aminulsujon.com/images/aminul-sujon-scrum-master-dhaka-profile-400.jpg" alt="Certified scrum master Dhaka Bangladesh" title="Certified scrum master Dhaka Bangladesh">
          <p>
            Aminul Sujon, Presentation of Agile Transform<br>
            Dhaka, Bangladesh.
          </p>
      </a>
      
    </section>
  </main>
@endsection

