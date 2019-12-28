@extends('layouts.default')

@section('title', 'Configurações')

@push('styles')
    <link href="{{ asset('assets/plugins/multiselect/css/multi-select.css') }}" rel="stylesheet" type="text/css"/>
    {{--    <link href="{{ asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">--}}
@endpush

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
                                            <label class="col-md-2 control-label" for="working-days">{{ __('Dias de Funcionamento') }}</label>
                                            <div class="col-md-10">
                                                <select multiple="multiple" name="settings[working-days][]" id="working-days" data-plugin="multiselect">
                                                    <option value="0" {{ old('settings.working-days.0', \App\Helpers\Settings::get('working-days', collect(), true)->contains('0'))? 'selected': null }}>Domingo</option>
                                                    <option value="1" {{ old('settings.working-days.1', \App\Helpers\Settings::get('working-days', collect(), true)->contains('1'))? 'selected': null }}>Segunda-feira</option>
                                                    <option value="2" {{ old('settings.working-days.2', \App\Helpers\Settings::get('working-days', collect(), true)->contains('2'))? 'selected': null }}>Terça-feira</option>
                                                    <option value="3" {{ old('settings.working-days.3', \App\Helpers\Settings::get('working-days', collect(), true)->contains('3'))? 'selected': null }}>Quarta-feira</option>
                                                    <option value="4" {{ old('settings.working-days.4', \App\Helpers\Settings::get('working-days', collect(), true)->contains('4'))? 'selected': null }}>Quinta-feira</option>
                                                    <option value="5" {{ old('settings.working-days.5', \App\Helpers\Settings::get('working-days', collect(), true)->contains('5'))? 'selected': null }}>Sexta-feira</option>
                                                    <option value="6" {{ old('settings.working-days.6', \App\Helpers\Settings::get('working-days', collect(), true)->contains('6'))? 'selected': null }}>Sábado</option>
                                                </select>
                                            </div>
                                        </div>

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
@push('scripts')
    <script src="{{ asset('assets/plugins/multiselect/js/jquery.multi-select.js') }}"></script>
    {{--    <script src="{{ asset('assets/plugins/select2/js/select2.min.js') }}"></script>--}}
    {{--    <script>--}}
    {{--        jQuery(document).ready(function () {--}}
    {{--            $(".select2").select2();--}}
    {{--        });--}}
    {{--    </script>--}}
@endpush
