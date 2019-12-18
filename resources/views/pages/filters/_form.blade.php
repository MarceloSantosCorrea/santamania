@push('plugins')
    <link href="{{ asset('assets/plugins/multiselect/css/multi-select.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/plugins/ion-rangeslider/ion.rangeSlider.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/plugins/ion-rangeslider/ion.rangeSlider.skinFlat.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/plugins/bootstrap-slider/css/bootstrap-slider.min.css') }}" rel="stylesheet" type="text/css"/>
@endpush
<div class="form-group">
    <label class="col-md-2 control-label">{{ __('Nome') }}</label>
    <div class="col-md-8">
        <input type="text" name="name" class="form-control" value="{{ old('name', isset($productCategory)? $productCategory->name: null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label" for="daysOfTheWeek">{{ __('Dias da Semana') }}</label>
    <div class="col-md-10">
        <select multiple="multiple" name="options[days-of-the-week][]" id="daysOfTheWeek" data-plugin="multiselect">
            <option value="0">Domingo</option>
            <option value="1">Segunda-feira</option>
            <option value="2">Terça-feira</option>
            <option value="3">Quarta-feira</option>
            <option value="4">Quinta-feira</option>
            <option value="5">Sexta-feira</option>
            <option value="6">Sábado</option>
        </select>
    </div>
</div>

<div class="form-group">
    <label for="range_04" class="col-sm-2 control-label"><b>Range</b><span class="font-normal text-muted f-s-12 clearfix">Set up range with negative values</span></label>
    <div class="col-sm-10">
        <input type="text" id="range_04">
    </div>
</div>

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-8">
        <div class="checkbox checkbox-primary">
            <input type="checkbox" name="active" {{ isset($productCategory) && $productCategory->active == 1?'checked="checked"':'' }}>
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
    <script src="{{ asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <script src="assets/plugins/ion-rangeslider/ion.rangeSlider.min.js"></script>
    <script>
        jQuery(document).ready(function () {
            $(".select2").select2();
            $("#range_04").ionRangeSlider({
                type: "double",
                grid: true,
                min : -1000,
                max : 1000,
                from: -500,
                to  : 500
            });
        });
    </script>
@endpush
