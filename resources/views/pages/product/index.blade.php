@extends('layouts.default')

@section('title', 'Produtos')

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <div class="btn-group pull-right m-t-15">
                                @can('create_products')
                                    <a class="btn btn-default dropdown-toggle waves-effect waves-light" href="{{ route('web.product.create') }}">{{ __('Novo') }}</a>
                                @endcan
                            </div>
                            <h4 class="page-title"> {{ __('Produtos') }} </h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}">Home</a>
                                </li>
                                <li class="active">
                                    <span> {{ __('Produtos') }} </span>
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
                                            <form method="get">
                                                <input class="form-control" name="search" type="text" placeholder="Localizar">
                                            </form>
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
                                                    <th>{{ __('Nome') }}</th>
                                                    <th>{{ __('Categoria') }}</th>
                                                    <th>{{ __('Status') }}</th>
                                                    @if(Gate::check('edit_products') || Gate::check('delete_products'))
                                                        <th class="text-center" style="width: 150px"> {{ __('Opções') }} </th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @include('pages.product.product-table-tbody', compact('data'))
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="fixed-table-pagination text-center">
                                        {{$data->appends(Request::only('search'))->links()}}
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
