<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Santa Mania Checklist">
        <meta name="author" content="Maxim Web">

        <title>{{ config('app.name') }} Checklist - Login</title>
        <link rel="shortcut icon" type="image/x-icon" href="{{ url('assets/images/logo.jpg') }}">

        <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css"/>
        <link href="{{ asset('assets/css/core.css') }}" rel="stylesheet" type="text/css"/>
        <link href="{{ asset('assets/css/components.css') }}" rel="stylesheet" type="text/css"/>
        <link href="{{ asset('assets/css/icons.css') }}" rel="stylesheet" type="text/css"/>
        <link href="{{ asset('assets/css/pages.css') }}" rel="stylesheet" type="text/css"/>
        <link href="{{ asset('assets/css/responsive.css') }}" rel="stylesheet" type="text/css"/>

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="{{ asset('assets/js/modernizr.min.js') }}"></script>
    </head>
    <body>
        <div class="account-pages"></div>
        <div class="clearfix"></div>

        @yield('content')

        <script>
            var resizefunc = [];
        </script>
        <!-- jQuery  -->
        <script src="{{ asset('assets/js/jquery.min.js') }}"></script>
        <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('assets/js/detect.js') }}"></script>
        <script src="{{ asset('assets/js/fastclick.js') }}"></script>
        <script src="{{ asset('assets/js/jquery.slimscroll.js') }}"></script>
        <script src="{{ asset('assets/js/jquery.blockUI.js') }}"></script>
        <script src="{{ asset('assets/js/waves.js') }}"></script>
        <script src="{{ asset('assets/js/wow.min.js') }}"></script>
        <script src="{{ asset('assets/js/jquery.nicescroll.js') }}"></script>
        <script src="{{ asset('assets/js/jquery.scrollTo.min.js') }}"></script>
        <script src="{{ asset('assets/js/jquery.core.js') }}"></script>
        <script src="{{ asset('assets/js/jquery.app.js') }}"></script>
    </body>
</html>
