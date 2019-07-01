<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{$config?$config->title:'PFinal'}}</title>
    <meta name="keywords" content="{{$config?$config->keywords:''}}">
    <meta name="description" content="{{$config?$config->description:''}}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" href="favicon.png" type="image/png">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/laravel-admin/font-awesome/css/font-awesome.min.css')}}">
    <script src="{{asset('js/app.js')}}"></script>
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
</head>
<body>
@if($config&&$config->template_id==0)
    @include('local.nav')
@else
    @include($config?$config->template_name.'.nav':'demo.nav');
@endif
@yield("content")
<!--Footer-->
@yield('my-script')
</body>
</html>