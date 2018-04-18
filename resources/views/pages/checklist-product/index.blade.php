@extends('layouts.default')

@section('title', 'Checklists')

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title"> {{ __('Checklist Produtos') }} </h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}"> {{ __('Home') }} </a>
                                </li>
                                <li class="active">
                                    <a href="{{ route('web.checklist.index') }}"> {{ __('Checklists') }} </a>
                                </li>
                                <li class="active">
                                    <span> {{ __('Checklist Produtos') }} </span>
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
                                            <input class="form-control" type="text" placeholder="Localizar">
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
                                                    <th>{{ __('Produto') }}</th>
                                                    <th>{{ __('Total') }}</th>
                                                    <th>{{ __('Status') }}</th>
                                                    <th class="text-center" style="width: 150px">{{ __('Options') }}</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @if($products)
                                                    @foreach($products as $product)
                                                        <tr>
                                                            <td>{{ $product->name }}</td>
                                                            <td>0</td>
                                                            <td></td>
                                                            <td>
                                                                <a href="{{ route('web.checklist.warehouse',[$checklist, $product]) }}"
                                                                   class="btn btn-success btn-sm tooltips"
                                                                   data-toggle="tooltip" data-placement="top"
                                                                   title="Contar">
                                                                    <i class="fa fa-bars"></i>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    @endforeach
                                                @endif
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