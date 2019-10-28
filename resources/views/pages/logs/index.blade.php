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
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover m-t-10">
                                            <thead>
                                                <tr>
                                                    <th>Data</th>
                                                    <th>Evento</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($data as $log)
                                                    <tr>
                                                        <td>{{ $log->created_at->format('d/m/Y H:i:s') }}</td>
                                                        <td>{{ $log->message }}</td>
                                                    </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="fixed-table-pagination text-center">
                                        {{ $data->appends(Request::only('search'))->links() }}
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
@endpush
