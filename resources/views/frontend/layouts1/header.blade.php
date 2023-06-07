<div class="header_top">
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-2">
              <div class="mt-2 header_top_mobile">IDB Bhaban, 8-A Rokeya Sharani, Dhaka 1207</div>  
            </div>
            <div class="col-md-4">
                <div class="footer_social mt-1 footer_social_mobile" style="float: right;">
                    <ul>
                        <li><a href="login" class="text-bcs-orange">Login</a> &nbsp; &nbsp;</li>
                        <li><a href="https://www.facebook.com/bcscomputercitydhaka" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .header{
        position: relative;
    }

    /* homepage two design starts */
    /*.header_top {
    overflow: inherit;
    height: 33px;
    background-image: linear-gradient(270deg,#ff5825,#ffc107,#ff5825);
  
    color: white;
    font-size: 13px;
    }
    .header {
       
        top: 0;
        left: 0;
        right: 0;
        z-index: 99;
        background: transparent;
      
        box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
        
        border-bottom: none;
        margin-bottom: 10px;
    }
    .logo{
        
        top: -25px;
        padding: 10px;
        background: white;
       
        border: none !important;
        border-radius: 5px;
        }
        .management-committee {
            border: none !important;
            padding-top: 20px;
            border-radius: 20px;
        }
        .logo img{
            height: 80px;
        }
    .menu ul li a {
            display: inline-block;
            color: #0B2B3C;
            text-transform: capitalize;
            font-weight: 500;
            padding: 40px 20px;
            -webkit-transition: all .4s ease-in-out;
            transition: all .4s ease-in-out;
            font-size: 16px;
        }
        .hr_btn .input-group input[type=text]{
            border: 1px solid #0B2B3C;
        }*/

    /* homepage two design ends*/
    .menu>nav>ul>li:first-child a {     
            padding-left: 0px;
        }
    .logo{
            position: absolute;
            top: -25px;
            padding: 10px;
            background: white;
            width: 140px;
            border: 3px solid black;
            border-radius: 5px;
        }
        @media (max-width: 991px) {
            .logo{      
                width: 94px;
             }
        }
    
</style>
    <!-- Start Header Area -->
	<header class="header">
		<div class="container">
			<div class="row">
				<!-- Logo -->
				<div class="col-lg-2 align-self-center">
					<div class="logo">
						<a href="{{ url('/') }}">
							<img src="{{ asset('assets/img/new-logo.jpg') }}" alt="img" height="100px;">
						</a>
					</div>
					<div class="canvas_open">
                        <a href="javascript:void(0)">
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                    </div>
				</div>
				<!-- Right -->
                <style>
                    /* Style the search box inside the navigation bar */
                    .hr_btn input[type=text] {
                   
                    float: right;
                    padding: 6px;
                    border: none;
                    margin-top: 8px;
                    margin-right: 16px;
                    font-size: 17px;
                    }

                    /* When the screen is less than 600px wide, stack the links and the search field vertically instead of horizontally */
                    @media screen and (max-width: 600px) {
                    .hr_btn a, .hr_btn input[type=text] {
                        float: none;
                        display: block;
                        text-align: left;
                        width: 100%;
                        margin: 0;
                        padding: 14px;
                    }
                  
                    }
                </style>
				<div class="col-lg-10">
					<!-- Header Right Button -->
					<div class="hr_btn">
                        <a href="get-a-quotation" class="button-2"> Get a Quotation</a>
					</div>               
					<!-- Menu -->
					<div class="menu">
						<nav>
                            <?php 
                            $menus = [];
                            $i = 1;
                            foreach($tags as $tag){
                              if(empty($tag->parent)){
                                $menus[$tag->id]['id']= $tag->id;
                                $menus[$tag->id]['title']= $tag->title;
                                $menus[$tag->id]['linkto']= $tag->linkto;
                                $menus[$tag->id]['linkUrl']= $tag->linkUrl;
                                $menus[$tag->id]['status']= $tag->status;
                              }else{
                                $child[$tag->parent][$i]['id'] = $tag->id;
                                $child[$tag->parent][$i]['title'] = $tag->title;
                                $child[$tag->parent][$i]['linkto'] = $tag->linkto;
                                $child[$tag->parent][$i]['linkUrl'] = $tag->linkUrl;
                                $child[$tag->parent][$i]['status'] = $tag->status;
                                $i++;
                              }
                            }
                            echo '<ul>';
                            foreach($menus as $key => $value){
                                if(!empty($child[$key])){
                                    $hasClass = "menu-item-has-children";
                                }else{
                                    $hasClass = "";
                                }
                                if(!empty($value['linkto'])){
                                    $menuLink = $value['linkto'];
                                }elseif(!empty($value['linkUrl'])){
                                    $menuLink = $value['linkUrl'];
                                }else{
                                    $menuLink = "#";
                                }
                                echo '<li class="'.$hasClass.'"><a href="'.$menuLink.'">'.$value['title'].'</a>';
                                if(!empty($child[$key])){
                                    echo '<ul>';
                                    foreach($child[$key] as $ke => $val){
                                        if(!empty($val['linkto'])){
                                            $menuLi = $val['linkto'];
                                        }elseif(!empty($val['linkUrl'])){
                                            $menuLi = $val['linkUrl'];
                                        }else{
                                            $menuLi = "#";
                                        }
                                        echo '<li><a href="'.$menuLi.'">'.$val['title'].'</a>';
                                        echo '</li>';
                                    }
                                    echo '</ul>';
                                }
                                echo '</li>';
                            }
                            echo '</ul>';
                            ?>
						</nav>                     
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- End Header Area -->
	<!-- Start Mobile Menu Area -->
    <div class="mobile-menu-area">
        <!--offcanvas menu area start-->
        <div class="off_canvars_overlay"></div>
        <div class="offcanvas_menu">
            <div class="offcanvas_menu_wrapper">
                <div class="canvas_close">
                    <a href="javascript:void(0)"><i class="fas fa-times"></i></a>
                </div>
                <div class="mobile-logo">
                    <a href="{{ url('/') }}">
                        <img src="assets/img/new-logo.jpg" alt="logo" height="100px" />
                    </a>
                </div>
                <div id="menu" class="text-left">
                    <?php 
                    $menus = [];
                    $i = 1;
                    foreach($tags as $tag){
                      if(empty($tag->parent)){
                        $menus[$tag->id]['id']= $tag->id;
                        $menus[$tag->id]['title']= $tag->title;
                        $menus[$tag->id]['linkto']= $tag->linkto;
                        $menus[$tag->id]['linkUrl']= $tag->linkUrl;
                        $menus[$tag->id]['status']= $tag->status;
                      }else{
                        $child[$tag->parent][$i]['id'] = $tag->id;
                        $child[$tag->parent][$i]['title'] = $tag->title;
                        $child[$tag->parent][$i]['linkto'] = $tag->linkto;
                        $child[$tag->parent][$i]['linkUrl'] = $tag->linkUrl;
                        $child[$tag->parent][$i]['status'] = $tag->status;
                        $i++;
                      }
                    }
                    echo '<ul class="offcanvas_main_menu">';
                    foreach($menus as $key => $value){
                        if(!empty($child[$key])){
                            $hasClass = "menu-item-has-children menu-open";
                            $menuAngle = '<span class="menu-expand"><i class="fa fa-angle-down"></i></span>';
                        }else{
                            $hasClass = "";$menuAngle = '';
                        }
                        if(!empty($value['linkto'])){
                            $menuLink = $value['linkto'];
                        }elseif(!empty($value['linkUrl'])){
                            $menuLink = $value['linkUrl'];
                        }else{
                            $menuLink = "#";
                        }
                        echo '<li class="'.$hasClass.'">'.$menuAngle.'<a href="'.$menuLink.'">'.$value['title'].'</a>';
                        if(!empty($child[$key])){
                            echo '<ul class="sub-menu">';
                            foreach($child[$key] as $ke => $val){
                                if(!empty($val['linkto'])){
                                    $menuLi = $val['linkto'];
                                }elseif(!empty($val['linkUrl'])){
                                    $menuLi = $val['linkUrl'];
                                }else{
                                    $menuLi = "#";
                                }
                                echo '<li><a href="'.$menuLi.'">'.$val['title'].'</a>';
                                echo '</li>';
                            }
                            echo '</ul>';
                        }
                        echo '</li>';
                    }
                    echo '</ul>';
                    ?>
                    <div class="footer_social mt-1">
                        <ul>
                            <li><a href="https://www.facebook.com/bcscityit/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                            <li><a href="#"><i class="fab fa-vimeo-v"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--offcanvas menu area end-->