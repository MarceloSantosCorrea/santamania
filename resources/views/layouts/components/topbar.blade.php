<div class="topbar">
    <div class="topbar-left">
        <div class="text-center">
            <a href="/" class="logo">
                @php $name = explode(' ', config('app.name')); @endphp
                <i class="icon-c-logo">
                    @foreach($name as $part)
                        <strong class="text-custom">{{ substr($part, 0, 1) }}</strong>
                    @endforeach
                </i>
                <span>
                    @foreach($name as $part)
                        <strong class="text-custom">{{ substr($part, 0, 1) }}</strong>{{ substr($part, 1, strlen($part) - 1) }}
                    @endforeach
                </span>
            </a>
        </div>
    </div>
    <!-- Button mobile view to collapse sidebar menu -->
    <div class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="">
                <div class="pull-left">
                    <button class="button-menu-mobile open-left waves-effect waves-light">
                        <i class="md md-menu"></i>
                    </button>
                    <span class="clearfix"></span>
                </div>
                {{--<ul class="nav navbar-nav hidden-xs">--}}
                {{--<li><a href="#" class="waves-effect waves-light">Files</a></li>--}}
                {{--<li class="dropdown">--}}
                {{--<a href="#" class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown"--}}
                {{--role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span--}}
                {{--class="caret"></span></a>--}}
                {{--<ul class="dropdown-menu">--}}
                {{--<li><a href="#">Action</a></li>--}}
                {{--<li><a href="#">Another action</a></li>--}}
                {{--<li><a href="#">Something else here</a></li>--}}
                {{--<li><a href="#">Separated link</a></li>--}}
                {{--</ul>--}}
                {{--</li>--}}
                {{--</ul>--}}
                {{--<form role="search" class="navbar-left app-search pull-left hidden-xs">--}}
                {{--<input type="text" placeholder="Search..." class="form-control">--}}
                {{--<a href="#"><i class="fa fa-search"></i></a>--}}
                {{--</form>--}}
                <ul class="nav navbar-nav navbar-right pull-right">
                    {{--<li class="dropdown top-menu-item-xs">--}}
                    {{--<a href="#" data-target="#" class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="true">--}}
                    {{--<i class="icon-bell"></i> <span class="badge badge-xs badge-danger">3</span>--}}
                    {{--</a>--}}
                    {{--<ul class="dropdown-menu dropdown-menu-lg">--}}
                    {{--<li class="notifi-title">--}}
                    {{--<span class="label label-default pull-right">New 3</span>Notification--}}
                    {{--</li>--}}
                    {{--<li class="list-group slimscroll-noti notification-list">--}}
                    {{--<!-- list item-->--}}
                    {{--<a href="javascript:void(0);" class="list-group-item">--}}
                    {{--<div class="media">--}}
                    {{--<div class="pull-left p-r-10">--}}
                    {{--<em class="fa fa-diamond noti-primary"></em>--}}
                    {{--</div>--}}
                    {{--<div class="media-body">--}}
                    {{--<h5 class="media-heading">A new order has been placed A new order has been placed</h5>--}}
                    {{--<p class="m-0">--}}
                    {{--<small>There are new settings available</small>--}}
                    {{--</p>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                    {{--</a>--}}

                    {{--<!-- list item-->--}}
                    {{--<a href="javascript:void(0);" class="list-group-item">--}}
                    {{--<div class="media">--}}
                    {{--<div class="pull-left p-r-10">--}}
                    {{--<em class="fa fa-cog noti-warning"></em>--}}
                    {{--</div>--}}
                    {{--<div class="media-body">--}}
                    {{--<h5 class="media-heading">New settings</h5>--}}
                    {{--<p class="m-0">--}}
                    {{--<small>There are new settings available</small>--}}
                    {{--</p>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                    {{--</a>--}}

                    {{--<!-- list item-->--}}
                    {{--<a href="javascript:void(0);" class="list-group-item">--}}
                    {{--<div class="media">--}}
                    {{--<div class="pull-left p-r-10">--}}
                    {{--<em class="fa fa-bell-o noti-custom"></em>--}}
                    {{--</div>--}}
                    {{--<div class="media-body">--}}
                    {{--<h5 class="media-heading">Updates</h5>--}}
                    {{--<p class="m-0">--}}
                    {{--<small>There are--}}
                    {{--<span class="text-primary font-600">2</span> new updates available--}}
                    {{--</small>--}}
                    {{--</p>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                    {{--</a>--}}

                    {{--<!-- list item-->--}}
                    {{--<a href="javascript:void(0);" class="list-group-item">--}}
                    {{--<div class="media">--}}
                    {{--<div class="pull-left p-r-10">--}}
                    {{--<em class="fa fa-user-plus noti-pink"></em>--}}
                    {{--</div>--}}
                    {{--<div class="media-body">--}}
                    {{--<h5 class="media-heading">New user registered</h5>--}}
                    {{--<p class="m-0">--}}
                    {{--<small>You have 10 unread messages</small>--}}
                    {{--</p>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                    {{--</a>--}}

                    {{--<!-- list item-->--}}
                    {{--<a href="javascript:void(0);" class="list-group-item">--}}
                    {{--<div class="media">--}}
                    {{--<div class="pull-left p-r-10">--}}
                    {{--<em class="fa fa-diamond noti-primary"></em>--}}
                    {{--</div>--}}
                    {{--<div class="media-body">--}}
                    {{--<h5 class="media-heading">A new order has been placed A new order has been placed</h5>--}}
                    {{--<p class="m-0">--}}
                    {{--<small>There are new settings available</small>--}}
                    {{--</p>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                    {{--</a>--}}

                    {{--<!-- list item-->--}}
                    {{--<a href="javascript:void(0);" class="list-group-item">--}}
                    {{--<div class="media">--}}
                    {{--<div class="pull-left p-r-10">--}}
                    {{--<em class="fa fa-cog noti-warning"></em>--}}
                    {{--</div>--}}
                    {{--<div class="media-body">--}}
                    {{--<h5 class="media-heading">New settings</h5>--}}
                    {{--<p class="m-0">--}}
                    {{--<small>There are new settings available</small>--}}
                    {{--</p>--}}
                    {{--</div>--}}
                    {{--</div>--}}
                    {{--</a>--}}
                    {{--</li>--}}
                    {{--<li>--}}
                    {{--<a href="javascript:void(0);" class="list-group-item text-right">--}}
                    {{--<small class="font-600">See all notifications</small>--}}
                    {{--</a>--}}
                    {{--</li>--}}
                    {{--</ul>--}}
                    {{--</li>--}}
                    <li class="hidden-xs">
                        <a href="#" id="btn-fullscreen" class="waves-effect waves-light"><i class="icon-size-fullscreen"></i></a>
                    </li>
                    {{--<li class="hidden-xs">--}}
                    {{--<a href="#" class="right-bar-toggle waves-effect waves-light"><i class="icon-settings"></i></a>--}}
                    {{--</li>--}}
                    <li class="dropdown top-menu-item-xs">
                        <a href="#" class="dropdown-toggle profile waves-effect waves-light" data-toggle="dropdown" aria-expanded="true">
                            <img src="https://www.gravatar.com/avatar/<?= md5(auth()->user()->email); ?>?s=29" alt="user-img" class="img-circle">
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="{{ route('web.user.profile') }}">
                                    <i class="ti-user m-r-10 text-custom"></i> {{ __('Meus Dados') }}
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="{{ route('logout') }}">
                                    <i class="ti-power-off m-r-10 text-danger"></i> {{ __('Sair') }}
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
