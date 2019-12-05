@extends('layouts.default')

@section('title', __('Perfis de Usuários'))

@push('styles')
    <link href="{{ asset('assets/plugins/multiselect/css/multi-select.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/css/components.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/css/pages.css') }}" rel="stylesheet" type="text/css"/>
    <style>
        .ms-container {
            width: 80%;
        }
    </style>
@endpush

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title">{{ __('Perfis Permissões') }}</h4>
                            <ol class="breadcrumb">
                                <li><a href="{{ route('home') }}">{{ __('Home') }}</a></li>
                                <li><a href="{{ route('web.acl.role.index') }}">{{ __('Perfis') }}</a></li>
                                <li class="active">
                                    <span>{{ __('Permissões') }}</span>
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

                                    @include('form._form_errors')
                                    <form class="form-horizontal" method="post" action="{{ route('web.acl.permission.role.update', ['acl_role' => $aclRole]) }}">
                                        {{method_field('PUT')}}
                                        {!! csrf_field() !!}
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="password">{{ __('Permissões') }}</label>
                                            <div class="col-md-10">
                                                <select multiple="multiple" name="permissions[]" data-plugin="multiselect">
                                                    @if($permissions)
                                                        @foreach($permissions as $permission)
                                                            <option value="{{ $permission->id }}" {{ (isset($permissionsRole) && $permissionsRole->contains('acl_permission_id', $permission->id))?'selected': null }}>{{ $permission->label }}</option>
                                                        @endforeach
                                                    @endif
                                                </select>
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
    <script src="{{ asset('assets/plugins/bootbox/bootbox.min.js') }}"></script>
    <script src="{{ asset('assets/js/bootbox_confirm.js') }}"></script>
@endpush

@push('scripts')
    <script src="{{ asset('assets/plugins/multiselect/js/jquery.multi-select.js') }}"></script>
@endpush
