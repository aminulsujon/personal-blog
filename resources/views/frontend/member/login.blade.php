<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>BCS- Login </title>
	<link rel="icon" href="assets/img/logo.png" type="image/gif" sizes="16x16">
	<link rel="icon" href="assets/img/logo.png" type="image/gif" sizes="18x18">
	<link rel="icon" href="assets/img/logo.png" type="image/gif" sizes="20x20">
	<link rel="stylesheet" href=" {{ asset('assets/css/bootstrap.min.css') }}">
	<link rel="stylesheet" href=" {{ asset('assets/css/bootstrap-icons.css') }}">
	<link rel="stylesheet" href=" {{ asset('assets/css/lightcase.css') }}">
	<link rel="stylesheet" href=" {{ asset('assets/css/fontawesome.all.min.css') }}">
	<link rel="stylesheet" href=" {{ asset('assets/css/owl.carousel.min.css') }}">
	<link rel="stylesheet" href=" {{ asset('assets/css/owl.theme.default.min.css') }}">
	<link rel="stylesheet" href=" {{ asset('assets/css/animate.css') }}">
	<link rel="stylesheet" href=" {{ asset('assets/css/typed.css') }}">
	<link rel="stylesheet" href="{{ asset('assets/css/magnific-popup.css') }}">
	<link rel="stylesheet" href="{{ asset('assets/css/normalize.css') }}">
	<link rel="stylesheet" href="{{ asset('assets/css/style.css?v=1') }}">
	<link rel="stylesheet" href="{{ asset('assets/css/responsive.css') }}">

</head>

<section class="login-form-style3" style="background-image:url('assets/img/member-login.jpg');">
    <div class="login-form-style3-main">
        <div class="login-form-style3-main_full">
            <div class="login-register_style3-head">
                <div class="lo-logo mb-20">
                    <a href="index-2.html">
                        <img src="assets/img/logo.png" alt="img">
                    </a>
                </div>
                <h2>Register Account</h2>
            </div>
            <div class="login-register3-form-middle">
                <form action="{{ route('register') }}" method="POST">
                    @csrf
                    <div class="single-field">
                        <input id="name" type="text" name="name" placeholder="User Name" value="{{ old('name') }}" required autocomplete="name">
                        <i class="bi bi-person"></i>
                        @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="single-field">
                        <input id="email" type="email" placeholder="Email Address" @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                        <i class="bi bi-envelope-fill"></i>
                        @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="single-field">
                        <input id="password" type="password" placeholder="Password" @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                        <i class="bi bi-lock-fill"></i>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="single-field">
                        <input id="password-confirm" type="password" name="password_confirmation" placeholder="Confirm Password" required autocomplete="new-password">
                        <i class="bi bi-lock-fill"></i>
                    </div>
                    <div class="single-field mb-0">
                        <button type="submit">Create Account</button>
                    </div>
                </form>
            </div>
            <div class="login-register-from-btom text-center mt-15">
                <p>Already have an account?<a href="{{ URL::to('/login') }}" class="text-primary ml-1">Sign In</a></p>
            </div>
        </div>
    </div>
</section>


  <!-- Js File -->
  <script src="{{ asset('assets/js/modernizr.min.js') }}"></script>
  <script src="{{ asset('assets/js/jquery-3.6.0.min.js') }}"></script>
  <script src="{{ asset('assets/js/popper.min.js') }}"></script>
  <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
  <script src="{{ asset('assets/js/owl.carousel.min.js') }}"></script>
  <script src="{{ asset('assets/js/jquery.nav.min.js') }}"></script>
  <script src="{{ asset('assets/js/jquery.magnific-popup.min.js') }}"></script>
  <script src="{{ asset('assets/js/mixitup.min.js') }}"></script>
  <script src="{{ asset('assets/js/wow.min.js') }}"></script>
  <script src="{{ asset('assets/js/lightcase.js') }}"></script>
  <script src="{{ asset('assets/js/jquery.waypoints.min.js') }}"></script>
  <script src="{{ asset('assets/js/jquery.counterup.min.js') }}"></script>
  <script src="{{ asset('assets/js/typed.js') }}"></script>
  <script src="{{ asset('assets/js/script.js') }}"></script>
  <script src="{{ asset('assets/js/mobile-menu.js') }}"></script>
  <script src="{{ asset('assets/js/ajax-form.js') }}"></script>

