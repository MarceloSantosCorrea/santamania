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
                                @can('create_product_categories')
                                    <a class="btn btn-default dropdown-toggle waves-effect waves-light" href="{{ route('web.product-category.create') }}">{{ __('Novo') }}</a>
                                @endcan
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
                                                    @if(Gate::check('edit_product_categories') || Gate::check('delete_product_categories'))
                                                        <th class="text-center" style="width: 150px"> {{ __('Opções') }} </th>
                                                    @endif
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
