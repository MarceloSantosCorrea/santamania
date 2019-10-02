@extends('layouts.default')

@section('title', __('Editar Tarefa'))

@push('styles')
    <link href="{{ asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
@endpush

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title">{{ __('Tarefas') }}</h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}">{{ __('Home') }}</a>
                                </li>
                                <li>
                                    <a href="{{ route('web.task.index') }}">{{ __('Tarefas') }}</a>
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
                                    <form class="form-horizontal" method="post" action="{{ route('web.task.update', $task) }}">
                                        {{method_field('PUT')}}
                                        @include('pages.task._form')
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
    <script src="{{ asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <script>
        jQuery(document).ready(function () {
            $(".select2").select2();
        });
    </script>
@endpush
