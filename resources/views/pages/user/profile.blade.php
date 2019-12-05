@extends('layouts.default')
@section('title', __('Meus Dados'))
@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title">Meus dados</h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}">Home</a>
                                </li>
                                <li class="active">Meus dados</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-sm-12">
                        <div class="card-box">
                            @include('layouts.components.alerts')
                            <div class="row">
                                <div class="col-md-12">
                                    @include('form._form_errors')
                                    <form class="form-horizontal" method="post" action="{{ route('web.user.updateProfile') }}">
                                        @csrf @method('put')
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="firstname">{{ __('Nome') }}</label>
                                            <div class="col-md-8">
                                                <input type="text" name="firstname" id="firstname" class="form-control" value="{{ old('name', isset($user)? $user->firstname: null) }}">
                                                <span class="help-block"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="lastname">{{ __('Sobrenome') }}</label>
                                            <div class="col-md-8">
                                                <input type="text" name="lastname" id="lastname" class="form-control" value="{{ old('name', isset($user)? $user->lastname: null) }}">
                                                <span class="help-block"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="email">{{ __('E-mail') }}</label>
                                            <div class="col-md-8">
                                                <input type="text" name="email" id="email_fake" autocomplete="off" style="display: none;"/>
                                                <input type="text" name="email" id="email" class="form-control" value="{{ old('name', isset($user)? $user->email: null) }}">
                                                <span class="help-block"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="password">{{ __('Senha') }}</label>
                                            <div class="col-md-8">
                                                <input type="password" name="password" id="password" class="form-control" placeholder="Informe a senha somente se desejar altar.">
                                                <span class="help-block"></span>
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
