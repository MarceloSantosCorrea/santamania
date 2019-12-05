@extends('layouts.default')

@section('title', 'Novo Setor')

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title">@lang('Setors')</h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}">@lang('Início')</a>
                                </li>
                                <li>
                                    <a href="{{ route('web.sector.index') }}">@lang('Setors')</a>
                                </li>
                                <li class="active">@lang('Novo')</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <div class="row">
                                <div class="col-md-12">
                                    @include('form._form_errors')
                                    <form class="form-horizontal" method="post" action="{{ route('web.sector.store') }}">
                                        @csrf
                                        @include('pages.sector._form')
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @include('layouts.components.footer')
    </div>
@endsection
