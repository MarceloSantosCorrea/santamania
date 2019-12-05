{!! csrf_field() !!}
<div class="form-group">
    <label class="col-md-2 control-label">{{ __('Produto') }}</label>
    <div class="col-md-8">
        <span class="form-control">{{ $product->name }}</span>
    </div>
</div>

<div class="form-group">
    <div class="col-md-2 control-label"></div>
    <div class="col-md-8 control-label">
        <div class="row">
            <div class="col-md-4">
                <label class="pull-left">{{ __('Segunda à Quinta') }}</label>
                <input class="form-control" type="number" name="days[]" min="0" step="0.001" value="{{ $productDailyChecklistArr[0] }}">
            </div>
            <div class="col-md-4">
                <label class="pull-left">{{ __('Sexta e Domingo') }}</label>
                <input class="form-control" type="number" name="days[]" min="0" step="0.001" value="{{ $productDailyChecklistArr[1] }}">
            </div>
            <div class="col-md-4">
                <label class="pull-left">{{ __('Sábado e Feriados') }}</label>
                <input class="form-control" type="number" name="days[]" min="0" step="0.001" value="{{ $productDailyChecklistArr[2] }}">
            </div>
        </div>
    </div>

</div>


<div class="form-group m-b-0">
    <div class="col-sm-offset-2 col-sm-8">
        <button name="submit" class="btn btn-info waves-effect waves-light">{{ __('Salvar') }}</button>
    </div>
</div>
