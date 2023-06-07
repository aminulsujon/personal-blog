<style>
    .fa-angle-down {
      font-size: 15px !important;
    }
  </style>
  <div class="app-sidebar sidebar-shadow">
    <div class="app-header__logo">
      <a href="/" target="_blank">
        <div class="logo-src">
        </div>
      </a>
      <div class="header__pane ml-auto">
        <div>
          <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
            <span class="hamburger-box">
              <span class="hamburger-inner"></span>
            </span>
          </button>
        </div>
      </div>
    </div>
    <div class="app-header__mobile-menu">
      <div>
        <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
          <span class="hamburger-box">
            <span class="hamburger-inner"></span>
          </span>
        </button>
      </div>
    </div>
    <div class="app-header__menu">
      <span>
        <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
          <span class="btn-icon-wrapper">
            <i class="fa fa-ellipsis-v fa-w-6"></i>
          </span>
        </button>
      </span>
    </div>
    <div class="scrollbar-sidebar">
      <div class="app-sidebar__inner">
        <ul class="vertical-nav-menu">
          <li class="app-sidebar__heading">Dashboards</li>
          <li>
            <a href="{{ URL::to('/home') }}" class="mm-active">
              <i class="metismenu-icon"></i> Dashboard </a>
          </li>
        @if (Auth::user()->role_id == 1)
              {{-- Logo --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon"></i> Logo <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/logo/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/logo')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
              {{-- logo end --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Welcome Text <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/welcome/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/welcome')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
              {{-- menu --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Menu <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/tag/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/tag')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- slider --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Slider <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/slider/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/slider')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Media Server --}}
                <li>
                  <a href="{{URL::to('admin/upload')}}">
                    <i class="metismenu-icon "></i> Media Server </a>
                </li>
               {{-- Blog --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Blog <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/blog/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/blog')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- News --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> News <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/news/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/news')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Press --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Press <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/press/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/press')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- event --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Event <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/event/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/event')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Conact --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Contact <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/contact/view')}}">
                        <i class="metismenu-icon"></i> View Contact </a>
                    </li>
                  </ul>
                </li>
              {{-- Gallery --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Gallery <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/gallery')}}">
                        <i class="metismenu-icon"></i> Image </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/video/')}}">
                        <i class="metismenu-icon"></i>Video </a>
                    </li>
                  </ul>
                </li>
                {{-- Notice --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Notice <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/notice/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/notice')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Committee --}}
                <li>
                  <a href="{{URL::to('admin/committee')}}">
                    <i class="metismenu-icon "></i> Committee </a>
                </li>
               {{-- Members --}}
                <li>
                  <a href="{{URL::to('admin/member')}}">
                    <i class="metismenu-icon "></i> Members </a>
                </li>
               {{-- Landing --}}
                <li>
                  <a href="{{URL::to('admin/landing')}}">
                    <i class="metismenu-icon "></i> Landing </a>
                </li>
                {{-- User --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> User <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/user/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/user')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Site Setting --}}
                <li>
                  <a href="{{URL::to('admin/siteoption')}}">
                    <i class="metismenu-icon "></i> Site Setting </a>
                </li>
               {{-- Page Setting --}}
                <li>
                  <a href="{{URL::to('admin/pagesetting')}}">
                    <i class="metismenu-icon "></i> Page Setting </a>
                </li>
               {{-- Pages --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Pages <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/page/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/page')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
                {{-- Subcribers--}}
                <li>
                  <a href="{{URL::to('admin/subscribers')}}">
                    <i class="metismenu-icon "></i> Subcribers
                  </a>
                </li> 
           @endif   
        @if (Auth::user()->role_id == 2)
                {{-- Logo --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon"></i> Logo <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/logo/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/logo')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
              {{-- logo end --}}
                {{-- welcome text --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Welcome Text <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/welcome/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/welcome')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
              {{-- menu --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Menu <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/tag/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/tag')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- slider --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Slider <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/slider/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/slider')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Media Server --}}
                <li>
                  <a href="{{URL::to('admin/upload')}}">
                    <i class="metismenu-icon "></i> Media Server </a>
                </li>
               {{-- Blog --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Blog <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/blog/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/blog')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- News --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> News <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/news/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/news')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Press --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Press <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/press/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/press')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- event --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Event <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/event/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/event')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Conact --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Contact <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/contact/view')}}">
                        <i class="metismenu-icon"></i> View Contact </a>
                    </li>
                  </ul>
                </li>
              {{-- Gallery --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Gallery <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/gallery')}}">
                        <i class="metismenu-icon"></i> Image </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/video/')}}">
                        <i class="metismenu-icon"></i>Video </a>
                    </li>
                  </ul>
                </li>
                {{-- Notice --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Notice <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/notice/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/notice')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Committee --}}
                <li>
                  <a href="{{URL::to('admin/committee')}}">
                    <i class="metismenu-icon "></i> Committee </a>
                </li>
               {{-- Members --}}
                <li>
                  <a href="{{URL::to('admin/member')}}">
                    <i class="metismenu-icon "></i> Members </a>
                </li>
                {{-- User --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> User <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/user/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/user')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Page Setting --}}
                <li>
                  <a href="{{URL::to('admin/pagesetting')}}">
                    <i class="metismenu-icon "></i> Page Setting </a>
                </li>
               {{-- Pages --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Pages <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/page/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/page')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
                {{-- Subcribers--}}
                <li>
                  <a href="{{URL::to('admin/subscribers')}}">
                    <i class="metismenu-icon "></i> Subcribers
                  </a>
                </li> 
           @endif   
        @if (Auth::user()->role_id == 3)
                {{-- welcome text --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Welcome Text <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/welcome/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/welcome')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
              {{-- menu --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Menu <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/tag/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/tag')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- slider --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Slider <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/slider/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/slider')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Media Server --}}
                <li>
                  <a href="{{URL::to('admin/upload')}}">
                    <i class="metismenu-icon "></i> Media Server </a>
                </li>
               {{-- Blog --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Blog <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/blog/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/blog')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- News --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> News <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/news/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/news')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Press --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Press <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/press/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/press')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- event --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Event <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/event/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/event')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
              {{-- Gallery --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Gallery <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/gallery')}}">
                        <i class="metismenu-icon"></i> Image </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/video/')}}">
                        <i class="metismenu-icon"></i>Video </a>
                    </li>
                  </ul>
                </li>
               {{-- Members --}}
                <li>
                  <a href="{{URL::to('admin/member')}}">
                    <i class="metismenu-icon "></i> Members </a>
                </li>        
               {{-- Page Setting --}}
                <li>
                  <a href="{{URL::to('admin/pagesetting')}}">
                    <i class="metismenu-icon "></i> Page Setting </a>
                </li>
           @endif   
        @if (Auth::user()->role_id == 4)
                {{-- welcome text --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Welcome Text <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/welcome/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/welcome')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
              
                  <a href="#">
                    <i class="metismenu-icon "></i> Menu <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/tag/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/tag')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- slider --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Slider <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/slider/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/slider')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Media Server --}}
                <li>
                  <a href="{{URL::to('admin/upload')}}">
                    <i class="metismenu-icon "></i> Media Server </a>
                </li>
               {{-- Blog --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Blog <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/blog/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/blog')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- News --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> News <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/news/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/news')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- Press --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Press <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/press/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/press')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>
               {{-- event --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Event <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/event/create')}}">
                        <i class="metismenu-icon"></i> Add </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/event')}}">
                        <i class="metismenu-icon"></i>Manage </a>
                    </li>
                  </ul>
                </li>          
              {{-- Gallery --}}
                <li>
                  <a href="#">
                    <i class="metismenu-icon "></i> Gallery <i class="metismenu-state-icon fa fa-angle-down caret-left"></i>
                  </a>
                  <ul>
                    <li>
                      <a href="{{URL::to('admin/gallery')}}">
                        <i class="metismenu-icon"></i> Image </a>
                    </li>
                    <li>
                      <a href="{{URL::to('admin/video/')}}">
                        <i class="metismenu-icon"></i>Video </a>
                    </li>
                  </ul>
                </li>           
           @endif   
        </ul>
      </div>
    </div>
  </div>