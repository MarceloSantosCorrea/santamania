{!! csrf_field() !!}
<div class="form-group">
    <label class="col-md-2 control-label">{{ __('Nome') }}</label>
    <div class="col-md-8">
        <input type="text" name="name" class="form-control" value="{{ old('name', isset($aclPermission)? $aclPermission->name: null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label">{{ __('Label') }}</label>
    <div class="col-md-8">
        <input type="text" name="label" class="form-control" value="{{ old('label', isset($aclPermission)? $aclPermission->label: null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group m-b-0">
    <div class="col-sm-offset-2 col-sm-8">
        <button name="submit" class="btn btn-info waves-effect waves-light">{{ __('Salvar') }}</button>
    </div>
</div>