@extends('frontend.layouts.app')

@section('content')

<style>
  .shop_logo{
    border: 1px solid;
    padding: 1px;
  }
.location{
    padding: 11px;
    box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;
    margin-bottom: 10px;
}
.location_border{
  border-right: 1px solid #d7d5d4;
}
.button-2 {
    display: inline-block;
    text-transform: capitalize;
    font-weight: 500;
    /* background: #fff; */
    padding: 6px 30px;
    font-size: 15px;
    color: white;
    border-radius: 9px;
    position: relative;
    z-index: 1;
    -webkit-transition: tra;
    transition: all .4s ease-in-out;
    border: 2px solid #fff;
    background-image: linear-gradient(310deg,#ff5825,#e9730e,#ff5825);
    margin-top: 7px;
}
.address{
  font-size: 14px;
  color: #7a7a7a;
}
.font-color-gray{
  color: #7a7a7a;
}

.profile-nav .user-heading {
   
    /* color: #fff; */
    border-radius: 4px 4px 0 0;
    -webkit-border-radius: 4px 4px 0 0;
    padding: 40px;
    text-align: center;
    border: 1px solid radial-gradient(circle, #ffd700, #f8c01f, #edab2e, #de9738, #cd853f);
}

.profile-nav .user-heading.round a  {
    /* border-radius: 50%;
    -webkit-border-radius: 50%; */
    /* border: 10px solid rgba(255,255,255,0.3); */
    display: inline-block;
    color: black !important;
}

.profile-nav .user-heading a img {
    width: 112px;
    height: 112px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
}

.profile-nav .user-heading h1 {
    /* font-size: 22px; */
    font-weight: 500;
    /* color: #fff; */
    /* margin-bottom: 5px; */
}

.profile-nav .user-heading p {
    /* color: #fff; */
    font-size: 14px;
}

.profile-nav ul {
    margin-top: 1px;
}

.profile-nav ul > li {
    border-bottom: 1px solid #ebeae6;
    margin-top: 0;
    line-height: 30px;
}

.profile-nav ul > li:last-child {
    border-bottom: none;
}

.profile-nav ul > li > a {
    border-radius: 0;
    -webkit-border-radius: 0;
    color: #89817f;
    border-left: 5px solid #fff;
}

.profile-nav ul > li > a:hover, .profile-nav ul > li > a:focus, .profile-nav ul li.active  a {
    background: #f8f7f5 !important;
    border-left: 5px solid #fbc02d;
    color: #89817f !important;
}

.profile-nav ul > li:last-child > a:last-child {
    border-radius: 0 0 4px 4px;
    -webkit-border-radius: 0 0 4px 4px;
}

.profile-nav ul > li > a > i{
    font-size: 16px;
    padding-right: 10px;
    color: #bcb3aa;
}

.panel{
    box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;
}
.profile-info .panel-footer {
    background-color:#f8f7f5 ;
    border-top: 1px solid #e7ebee;
}
.profile-info .panel-footer ul li a {
    color: #7a7a7a;
}
.profile-activity h5 {
    font-weight: 300;
    margin-top: 0;
    color: #c3c3c3;
}
.tab_content{
    margin-left: 10px;
    box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;
    /* padding-left: 20px; */
    /* padding-bottom: 5px; */
}
.nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active{
    border: none !important;
}
.tab-pane{
    padding-top: 10px !important;
    padding-bottom: 10px !important;
}
.tab-pane p{
    padding: 20px;
}
.shop_logo{
    text-align: center
}
.event_btn{
        background-image: linear-gradient(310deg,#ff5825,#e9730e,#ff5825);
    }

h1{
    font-size: 25px;
}
@media only screen and (max-width: 767px) {
    .panel{
        padding: 20px;
    }
}


/* breadcrumbs starts */


/* breadcrumbs end */

.gradient-box {
    /* display: flex; */
    align-items: center;
    /* width: 90%; */
    margin: auto;
    max-width: 22em;
    position: relative;
    /* padding: 30% 2em; */
    box-sizing: border-box;
    /* color: #FFF; */
    background: #fff;
    background-clip: padding-box;
    border: solid 5px transparent;
    /* border-radius: 1em; */
}
.gradient-box:before {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: -1;
    margin: -3px;
    border-radius: inherit;
    background: linear-gradient(to right, red, orange);
}

</style>


<div class="container bootstrap snippets bootdey mt-5">
    <nav aria-label="breadcrumb">
        {{-- <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item"><a href="#">Find Member</a></li>
          <li class="breadcrumb-item active" aria-current="page">Member</li>
        </ol> --}}
    </nav>

    <div class="row mt-5 mb-5">       
      <div class=" profile-nav col-md-3">
        <div class="shop_logo mb-3">
            <img src="https://i.ibb.co/PGTS59t/details-small-banner-crenotive.webp" alt="" >
        </div>
        {{-- <div class="panel valid_box p-4 mb-4" style="border-top: 5px solid;">
            <div class="valid">
                <h2>Valid Till : 31 Dec, 2023</h2>
            </div>
        </div> --}}
          <div class="gradient-box panel pb-3 text-center">
              <div class="user-heading round">
                  <a href="#">
                      <img src="https://i.ibb.co/DW9255r/ceo.png" alt="">
                  </a>
                  <h4 class="mt-3">Representative</h4>
                  <h1>Arifin </h1>
                  <p>Designation : CEO</p>
                  <p>Email: crenotive@gmail.com</p>
                  <p>Contact: 01616-012768</p>
                  <p>Website: <a href="https://crenotive.com/">crenotive.com</a> </p>
              </div>
          </div>
          
      </div>
      <div class="profile-info col-md-9">
            <div class="row">
                <div class="col-md-12 tab_content">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                          <button class="nav-link py-4 active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Company Info</button>
                        </li>
                        <li class="nav-item" role="presentation">
                          <button class="nav-link py-4" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">About Company</button>
                        </li>
                        <li class="nav-item" role="presentation">
                          <button class="nav-link py-4" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Message</button>
                        </li>
                        <li class="nav-item" role="presentation">
                          <button class="nav-link py-4" id="service-tab" data-bs-toggle="tab" data-bs-target="#service" type="button" role="tab" aria-controls="service" aria-selected="false">Product/Service</button>
                        </li>
                        <li class="nav-item" role="presentation">
                          <button class="nav-link py-4" id="contact-tab" data-bs-toggle="tab" data-bs-target="#photo" type="button" role="tab" aria-controls="photo" aria-selected="false">Gallery</button>
                        </li>
                        <li class="nav-item" role="presentation">
                          <button class="nav-link py-4" id="contact-tab" data-bs-toggle="tab" data-bs-target="#branch" type="button" role="tab" aria-controls="branch" aria-selected="false">Branch</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="tab-pane fade table-responsive active show" id="pills-company-info" role="tabpanel" aria-labelledby="pills-company-info-tab">
                                <table class="table my-4">
                                    <tbody>
                                        <tr>
                                            <td class="bg w33">BCS Member ID</td>
                                            <td>1000</td>
                                        </tr>
                                        <tr>
                                            <td class="bg w33">Company Name</td>
                                            <td>Crenotive/td>
                                        </tr>
                                        <tr>
                                            <td class="bg w33">Company Type</td>
                                            <td>Proprietorship</td>
                                        </tr>
                                        <tr>
                                            <td class="bg w33">Nature of Business</td>
                                            <td>IT Enabled Services (ITES)</td>
                                        </tr>
                                        <tr>
                                            <td class="bg w33">Business Address</td>
                                            <td>220,1 Begum Rokeya Sharani, West Kafrul, Dhaka</td>
                                        </tr>
                                        <tr>
                                            <td class="bg w33">Establish Year</td>
                                            <td>2021</td>
                                        </tr>   
                                        <tr>
                                            <td class="bg w33">Branch</td>
                                            <td>Central</td>
                                        </tr>
                                        <tr>
                                            <td class="bg w33">Telephone</td>
                                            <td>01616-012768</td>
                                        </tr>
                                        <tr>
                                            <td class="bg w33">Mobile</td>
                                            <td>01616-012768</td>
                                        </tr>
                                        <tr>
                                            <td class="bg w33">Email</td>
                                            <td>crenotive@gmail.com; admin@crenotive.com</td>
                                        </tr>
                                        <tr>
                                            <td class="bg w33">Company Website</td>
                                            <td><a href="https://crenotive.com/"></a> crenotive.com </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <p> Company info typically refers to important information about a particular company that helps stakeholders, investors, and customers understand its operations, goals, and financial standing. This information may include the company's history, mission statement, products and services, organizational structure, key personnel, financial performance, and other relevant data. The company info is usually available on the company's website or through other public sources, and is used to make informed decisions about investing in or doing business with the company.</p></div>
                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                            <div class="row">
                                <div class="col-md-12">
                                  <div class="contact-form mt-4">
                                    <form action="https://demo.crenotive.com/contact-store" method="POST">
                                        <input type="hidden" name="_token" value="tVfKlztnOea3M34pKFWYsQp5GZTduznxXAhj8OHt">                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="single-input">
                                                    <input type="text" name="name" placeholder="Your Name" required="">
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
                        
                        </div>
                        
                        <div class="tab-pane fade" id="service" role="tabpanel" aria-labelledby="service-tab">
                            <table class="table my-4">
                                <tbody>
                                    <tr>
                                        <td class="bg w33"> <a  target="_blank" href="https://crenotive.com/service/seo/on-page-seo/">On Page SEO Services</a></td>
                                      
                                    </tr>
                                    <tr>
                                        <td><a target="_blank" href="https://crenotive.com/service/seo/on-page-seo/">On Page SEO Services</a></td>
                                    </tr>
                                    <tr>                                      
                                        <td><a target="_blank" href="https://crenotive.com/service/seo/on-page-seo/">Off Page SEO Services</a></td>
                                    </tr>
                                    <tr>
                                        <td><a target="_blank" href="https://crenotive.com/youtube-2/">YouTube SEO</a></td>
                                    </tr>
                                    <tr>                                   
                                        <td><a target="_blank" href="https://crenotive.com/social-media-management/">Social Media Management</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                       
                        <div class="tab-pane fade" id="photo" role="tabpanel" aria-labelledby="photo-tab">
                            <img src="https://crenotive.com/wp-content/uploads/2022/10/whatsapp-marketing-software-best.webp" alt="" height="300" width="300">
                            <img src="https://crenotive.com/wp-content/uploads/2022/11/best-youtube-seo-service.png" alt=""  height="300" width="300">
                            <img src="https://crenotive.com/wp-content/uploads/2022/11/linkedin-contact-data-extractor.webp" alt="" height="300" width="300">
                        </div>
                        <div class="tab-pane fade" id="branch" role="tabpanel" aria-labelledby="branch-tab">
                          {{-- Our UK Branch <br>
                          Address: 123 Main Street, New York, NY 10001 <br>
                          hours: Mon-Fri 9:00AM – 5:00PM <br>
                          phone: 123-456-7890 <br>
                          Email: contact@crenotive.com <br> --}}
                        <div class="location">
                          <div class="row">
                            <div class="col-md-4">
                              <div class="location_border">
                                <b>New York</b> <span style="font-size: 13px;">(Mon-Fri 9:00AM – 5:00PM)</span> <br>
                               <span class="address">123 Main Street, New York, NY 10001</span> 
                              </div>
                            </div>
                            <div class="col-md-8">
                                <div class="row">
                                  <div class="col-md-3">
                                    <div class="location_border">
                                      <span class="font-color-gray">SEO</span><br>
                                      01616-012768
                                    </div>
                                  </div>
                                  <div class="col-md-3">
                                    <div class="location_border">
                                      <span class="font-color-gray">Web</span><br>
                                      01616-012768
                                    </div>
                                  </div>
                                  <div class="col-md-3">
                                    <div class="location_border">
                                      <span class="font-color-gray"> Social Media</span><br>
                                    01616-012768
                                    </div>
                                  </div>
                                  <div class="col-md-3 text-center">
                                    <a href="" ><svg width="30px" height="30px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd" d="M11.3856 23.789L11.3831 23.7871L11.3769 23.7822L11.355 23.765C11.3362 23.7501 11.3091 23.7287 11.2742 23.7008C11.2046 23.6451 11.1039 23.5637 10.9767 23.4587C10.7224 23.2488 10.3615 22.944 9.92939 22.5599C9.06662 21.793 7.91329 20.7041 6.75671 19.419C5.60303 18.1371 4.42693 16.639 3.53467 15.0528C2.64762 13.4758 2 11.7393 2 10C2 7.34784 3.05357 4.8043 4.92893 2.92893C6.8043 1.05357 9.34784 0 12 0C14.6522 0 17.1957 1.05357 19.0711 2.92893C20.9464 4.8043 22 7.34784 22 10C22 11.7393 21.3524 13.4758 20.4653 15.0528C19.5731 16.639 18.397 18.1371 17.2433 19.419C16.0867 20.7041 14.9334 21.793 14.0706 22.5599C13.6385 22.944 13.2776 23.2488 13.0233 23.4587C12.8961 23.5637 12.7954 23.6451 12.7258 23.7008C12.6909 23.7287 12.6638 23.7501 12.645 23.765L12.6231 23.7822L12.6169 23.7871L12.615 23.7885C12.615 23.7885 12.6139 23.7894 12 23L12.6139 23.7894C12.2528 24.0702 11.7467 24.0699 11.3856 23.789ZM12 23L11.3856 23.789C11.3856 23.789 11.3861 23.7894 12 23ZM15 10C15 11.6569 13.6569 13 12 13C10.3431 13 9 11.6569 9 10C9 8.34315 10.3431 7 12 7C13.6569 7 15 8.34315 15 10Z" fill="#000000"/>
                                      </svg>
                                    </a>
                                  </div>
                                </div>
                            </div>
                          </div>
                        </div>
                        <div class="location">
                          <div class="row">
                            <div class="col-md-4">
                              <div class="location_border">
                             <b>Dhaka </b><span style="font-size: 13px;">(Sat-Thu 10:00AM – 6:00PM)</span> <br>
                             <span class="address">1220,1 Begum Rokeya Sharani, Dhaka</span> 
                              </div>
                            </div>
                            <div class="col-md-8">
                                <div class="row">
                                  <div class="col-md-3">
                                    <div class="location_border">
                                     <span class="font-color-gray">SEO</span> <br>
                                      01616-012768
                                    </div>
                                  </div>
                                  <div class="col-md-3">
                                    <div class="location_border">
                                   <span class="font-color-gray"> Web</span> <br>
                                      01616-012768
                                    </div>
                                  </div>
                                  <div class="col-md-3">
                                    <div class="location_border">
                                      <span class="font-color-gray"> Social Media</span> <br>
                                        01616-012768
                                    </div>
                                  </div>
                                  <div class="col-md-3 text-center">
                                    <a href="" ><svg width="30px" height="30px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <path fill-rule="evenodd" clip-rule="evenodd" d="M11.3856 23.789L11.3831 23.7871L11.3769 23.7822L11.355 23.765C11.3362 23.7501 11.3091 23.7287 11.2742 23.7008C11.2046 23.6451 11.1039 23.5637 10.9767 23.4587C10.7224 23.2488 10.3615 22.944 9.92939 22.5599C9.06662 21.793 7.91329 20.7041 6.75671 19.419C5.60303 18.1371 4.42693 16.639 3.53467 15.0528C2.64762 13.4758 2 11.7393 2 10C2 7.34784 3.05357 4.8043 4.92893 2.92893C6.8043 1.05357 9.34784 0 12 0C14.6522 0 17.1957 1.05357 19.0711 2.92893C20.9464 4.8043 22 7.34784 22 10C22 11.7393 21.3524 13.4758 20.4653 15.0528C19.5731 16.639 18.397 18.1371 17.2433 19.419C16.0867 20.7041 14.9334 21.793 14.0706 22.5599C13.6385 22.944 13.2776 23.2488 13.0233 23.4587C12.8961 23.5637 12.7954 23.6451 12.7258 23.7008C12.6909 23.7287 12.6638 23.7501 12.645 23.765L12.6231 23.7822L12.6169 23.7871L12.615 23.7885C12.615 23.7885 12.6139 23.7894 12 23L12.6139 23.7894C12.2528 24.0702 11.7467 24.0699 11.3856 23.789ZM12 23L11.3856 23.789C11.3856 23.789 11.3861 23.7894 12 23ZM15 10C15 11.6569 13.6569 13 12 13C10.3431 13 9 11.6569 9 10C9 8.34315 10.3431 7 12 7C13.6569 7 15 8.34315 15 10Z" fill="#000000"/>
                                      </svg>
                                    </a>  
                                  </div>
                                </div>
                            </div>
                          </div>
                        </div>

                        </div>
                    </div>
                </div>            
            </div>
      </div>
    </div>
    </div>
@endsection