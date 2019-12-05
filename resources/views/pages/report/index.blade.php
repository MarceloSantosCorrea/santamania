@extends('layouts.default')

@section('title', 'Relatórios')

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title"> {{ __('Relatórios') }} </h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}"> {{ __('Home') }} </a>
                                </li>
                                <li class="active">
                                    <span> {{ __('Relatórios') }} </span>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <div class="row">
                                <div class="col-sm-4 col-xs-12">
                                    <div class="card m-b-20 card-body">
                                        <h4 class="card-title">Produtos</h4>
                                        <p class="card-text">Relatórios de saídas de produtos</p>
                                        <a href="{{ route('web.report.out') }}" class="btn btn-primary">Visualizar</a>
                                    </div>
                                </div>

                                <div class="col-sm-4 col-xs-12">
                                    <div class="card m-b-20 card-body text-xs-center">
                                        <h4 class="card-title">Produção</h4>
                                        <p class="card-text">Relatórios de Produtos produzidos</p>
                                        <a href="{{ route('web.report.production') }}" class="btn btn-primary">Visualizar</a>
                                    </div>
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
