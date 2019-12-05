@extends('layouts.default')

@section('title', 'Configurações')

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title">Configurações Gerais</h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}">Home</a>
                                </li>
                                <li class="active">Configurações</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal" method="post" action="{{ route('web.settings.store') }}">
                                        @csrf
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-8">
                                                <div class="checkbox checkbox-primary">
                                                    <input type="checkbox" name="settings[debug]" id="debug" {{ old('settings.logs_status', \App\Helpers\Settings::get('debug')) == 'true'? 'checked': null }}>
                                                    <label for="debug">{{ __('Debug') }}</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group m-b-0">
                                            <div class="col-sm-offset-2 col-sm-8">
                                                <button name="submit" class="btn btn-info waves-effect waves-light">{{ __('Salvar') }}</button>
                                            </div>
                                        </div>
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
