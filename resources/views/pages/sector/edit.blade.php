@extends('layouts.default')

@section('title', __('Editar Setor'))

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title">{{ __('Setores') }}</h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}">{{ __('Início') }}</a>
                                </li>
                                <li>
                                    <a href="{{ route('web.sector.index') }}">{{ __('Setores') }}</a>
                                </li>
                                <li class="active">{{ __('Editar') }}</li>
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
                                    <form class="form-horizontal" method="post" action="{{ route('web.sector.update', $sector->id) }}">
                                        {{method_field('PUT')}}
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
