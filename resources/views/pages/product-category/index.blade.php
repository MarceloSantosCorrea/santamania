@extends('layouts.default')

@section('title', __('Categorias de Produtos'))

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <div class="btn-group pull-right m-t-15">
                                <button type="button" class="btn btn-default dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">
                                    {{ __('Opções') }}<span class="m-l-5"><i class="fa fa-cog"></i></span>
                                </button>
                                <ul class="dropdown-menu drop-menu-right" role="menu">
                                    <li><a href="{{ route('web.product-category.create') }}">{{ __('Novo') }}</a></li>
                                </ul>
                            </div>
                            <h4 class="page-title">{{ __('Categorias de Produtos') }}</h4>
                            <ol class="breadcrumb">
                                <li><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
                                <li class="active">
                                    <span>{{ __('Categorias') }}</span>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-sm-12">
                        <div class="card-box">
                            @include('layouts.components.alerts')
                            <div class="row">
                                <div class="col-lg-6 m-b-10 pull-right">
                                    <div class="fixed-table-toolbar">
                                        <div class="search">
                                            <input class="form-control" type="text" placeholder="{{ __('Localizar') }}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover m-t-10">
                                            <thead>
                                                <tr>
                                                    <th class="bs-checkbox">
                                                        <input name="btSelectItem" type="checkbox">
                                                    </th>
                                                    <th>#</th>
                                                    <th>{{ __('Nome') }}</th>
                                                    <th>{{ __('Status') }}</th>
                                                    <th class="text-center" style="width: 150px">{{ __('Opções') }}</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @include('pages.product-category.product-categories-table-tbody', compact('data'))
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="fixed-table-pagination">
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

@push('scripts')
    <script src="{{ asset('assets/plugins/bootbox/bootbox.min.js') }}"></script>
    <script src="{{ asset('assets/js/bootbox_confirm.js') }}"></script>
@endpush