@push('styles')
    <link href="{{ asset('assets/plugins/multiselect/css/multi-select.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/css/components.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/css/pages.css') }}" rel="stylesheet" type="text/css"/>
@endpush

{!! csrf_field() !!}

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
        <input type="password" name="password" id="password" class="form-control">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label" for="password">{{ __('Nível de Acesso') }}</label>
    <div class="col-md-8">
        <select multiple="multiple" name="roles[]" data-plugin="multiselect">
            @if($aclRoles)
                @foreach($aclRoles as $aclRole)
                    <option value="{{ $aclRole->id }}" {{ (isset($user) && $user->roles->contains('name', $aclRole->name))? 'selected': null }}>{{ $aclRole->label }}</option>
                @endforeach
            @endif
        </select>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-8">
        <div class="checkbox checkbox-primary">
            <input type="checkbox" name="active" id="active" {{ isset($user) && $user->active == 1?'checked="checked"':'' }}>
            <label for="active">{{ __('Ativo') }}</label>
        </div>
    </div>
</div>

<div class="form-group m-b-0">
    <div class="col-sm-offset-2 col-sm-8">
        <button name="submit" class="btn btn-info waves-effect waves-light">{{ __('Salvar') }}</button>
    </div>
</div>

@push('scripts')
    <script src="{{ asset('assets/plugins/multiselect/js/jquery.multi-select.js') }}"></script>
@endpush
