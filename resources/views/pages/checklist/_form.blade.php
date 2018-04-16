{!! csrf_field() !!}
<div class="form-group">
    <label class="col-md-2 control-label" for="date">{{ __('Data') }}</label>
    <div class="col-md-8">
        <input type="date" name="date" id="date" class="form-control" value="{{ old('date', isset($checklist)? date('Y-m-d', strtotime($checklist->date)): null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group m-b-0">
    <div class="col-sm-offset-2 col-sm-8">
        <button name="submit" class="btn btn-info waves-effect waves-light">{{ __('Salvar') }}</button>
    </div>
</div>