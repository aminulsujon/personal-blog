<!doctype html>
<html lang="en">
<head>
    @include('frontend/head')
    @yield('social')
    @include('frontend/schema')
    @yield('schema')
</head>

<body>
    @include('frontend/template-cat/header')
    @yield('content')
    @include('frontend/template-cat/footer')
</body>
</html>