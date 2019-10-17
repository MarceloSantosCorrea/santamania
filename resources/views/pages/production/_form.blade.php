@push('plugins')
    <link href="{{ asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
@endpush
<div class="form-group">
    <label class="col-md-2 control-label" for="name">Produto</label>
    <div class="col-md-8">
        <select name="product_id" id="product_id" class="form-control select2">
            <option>Selecione...</option>
            @php /** @var $product \App\Models\Product */  @endphp
            @foreach($products as $product)
                <option value="{{ $product->id }}" {{ old('product_id', isset($production) && $product->id == $production->product_id? 'selected="selected"': null) }}>
                    {{ "{$product->name} - {$product->unitsMeasure->name}"  }}
                </option>
            @endforeach
        </select>
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label" for="quantity">Quantidade</label>
    <div class="col-md-8">
        <input type="number" step="any" name="quantity" id="quantity" class="form-control" value="{{ old('quantity', isset($production)? $production->quantity: null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label" for="date">Data</label>
    <div class="col-md-8">
        <input type="date" name="date" id="date" class="form-control" value="{{ old('date', isset($production)? date('Y-m-d', strtotime($production->date)): null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group m-b-0">
    <div class="col-sm-offset-2 col-sm-8">
        <button name="submit" class="btn btn-info waves-effect waves-light">Salvar</button>
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
