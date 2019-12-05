@extends('layouts.default')
@section('title', __('Editar Produto'))
@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title">{{ __('Produtos') }}</h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}">{{ __('Home') }}</a>
                                </li>
                                <li>
                                    <a href="{{ route('web.product.index') }}">{{ __('Produtos') }}</a>
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
                                    <form class="form-horizontal" method="post" action="{{ route('web.product.update', ['product' => $product->id]) }}">
                                        @csrf @method('put')
                                        @include('pages.product._form')
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
