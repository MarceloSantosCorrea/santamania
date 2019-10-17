@push('plugins')
    <link href="{{ asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
@endpush

<div class="form-group">
    <label class="col-md-2 control-label">{{ __('Nome') }}</label>
    <div class="col-md-8">
        <input type="text" name="name" class="form-control" value="{{ old('name', isset($product)? $product->name: null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label">{{ __('Categoria') }}</label>
    <div class="col-md-8">
        <select class="form-control select2" name="product_category_id">
            <option value="">{{ __('Selecione') }}...</option>
            @if($productCategories)
                @foreach($productCategories as $productCategory)
                    <option value="{{$productCategory->id}}" {{ isset($product) && $product->product_category_id == $productCategory->id ? 'selected': null }}>{{$productCategory->name}}</option>
                @endforeach
            @endif
        </select>
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label">{{ __('Unidate de Medida') }}</label>
    <div class="col-md-8">
        <select class="form-control select2" name="units_measure_id">
            <option value="">{{ __('Selecione') }}...</option>
            @if($unitsMeasures)
                @foreach($unitsMeasures as $unitsMeasure)
                    <option value="{{$unitsMeasure->id}}" {{ isset($product) && $product->units_measure_id == $unitsMeasure->id ? 'selected': null }}>{{$unitsMeasure->name}}</option>
                @endforeach
            @endif
        </select>
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-8">
        <div class="checkbox checkbox-primary">
            <input type="checkbox" name="active" {{ !isset($product) || (isset($product) && $product->active == 1)?'checked="checked"':'' }}>
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
    <script src="{{ asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <script>
        jQuery(document).ready(function () {
            $(".select2").select2();
        });
    </script>
@endpush
