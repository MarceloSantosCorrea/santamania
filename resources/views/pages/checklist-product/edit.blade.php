@extends('layouts.default')
@section('title', __('Checklist Contagem'))
@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title">{{ __('Checklist Contagem') }}</h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}">{{ __('Home') }}</a>
                                </li>
                                <li>
                                    <a href="{{ route('web.checklist.index') }}">{{ __('Checklists') }}</a>
                                </li>
                                <li>
                                    <a href="{{ route('web.checklist.show', [$checklist]) }}">{{ __('Checklist Produto') }}</a>
                                </li>
                                <li class="active">{{ __('Contagem') }}</li>
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
                                    <form class="form-horizontal" method="post" action="{{ route('web.checklist-product.update', [$checklistProduct]) }}">
                                        {{ method_field('PUT') }}
                                        @if($warehouses)
                                            {!! csrf_field() !!}

                                            <div class="form-group">
                                                <label class="col-md-2 control-label">{{ __('Produto') }}</label>
                                                <div class="col-md-8">
                                                    <label class="control-label" style="font-size: 18px; padding-top: 4px">{{ __($product->name) }}</label>
                                                </div>
                                            </div>

                                            @foreach($warehouses as $warehouse)

                                                <div class="form-group">
                                                    <label class="col-md-2 control-label" for="date">{{ __($warehouse->name) }}</label>
                                                    <div class="col-md-4">
                                                        <input type="number" step="any" name="quantities[{{ $warehouse->id }}]" id="date" class="form-control" value="{{ $warehouse->checklistWarehouseQuantities->quantity }}">
                                                        <span class="help-block"></span>
                                                    </div>
                                                </div>

                                            @endforeach
                                            <div class="form-group m-b-0">
                                                <div class="col-sm-offset-2 col-sm-8">
                                                    <button name="submit" class="btn btn-info waves-effect waves-light">{{ __('Salvar') }}</button>
                                                </div>
                                            </div>
                                        @endif
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