@push('styles')
    <link href="{{ asset('assets/plugins/multiselect/css/multi-select.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
@endpush
<div class="form-group">
    <label class="col-md-2 control-label">{{ __('Nome') }}</label>
    <div class="col-md-8">
        <input type="text" name="name" class="form-control" value="{{ old('name', isset($sector)? $sector->name: null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-8">
        <div class="checkbox checkbox-primary">
            <input type="checkbox" name="active" {{ isset($sector) && $sector->active == 1?'checked="checked"':'' }}>
            <label for="active">{{ __('Ativo') }}</label>
        </div>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label" for="products">{{ __('Produtos') }}</label>
    <div class="col-md-10">
        <select multiple="multiple" name="products[]" id="products" data-plugin="multiselect">
            @php $products = \App\Models\Product::where(['active' => 1])->get() @endphp
            @if($products->count())
                @foreach($products as $product)
                    <option value="{{ $product->id }}" {{ isset($sector) && $sector->products->contains('id', $product->id) ? 'selected' : null }}>{{ $product->name }}</option>
                @endforeach
            @endif
        </select>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label" for="user_id">{{ __('Usuário Responsável') }}</label>
    <div class="col-md-8">
        <select name="user_id" id="user_id" class="form-control select2">
            <option value="">Selecione...</option>
            @php $users = \App\Models\User::where(['active' => 1])->get() @endphp
            @if($users->count())
                @foreach($users as $user)
                    <option value="{{ $user->id }}" {{ isset($sector) && $sector->user->first()->id == $user->id ? 'selected' : null }} >{{ $user->name }}</option>
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

@push('scripts')
    <script src="{{ asset('assets/plugins/multiselect/js/jquery.multi-select.js') }}"></script>
    <script src="{{ asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <script>
        jQuery(document).ready(function () {
            $(".select2").select2();
        });
    </script>
@endpush
