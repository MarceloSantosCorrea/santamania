{!! csrf_field() !!}
<div class="form-group">
    <label class="col-md-2 control-label" for="name">Nome</label>
    <div class="col-md-8">
        <input type="text" name="name" id="name" class="form-control" value="{{ old('name', isset($warehouse)? $warehouse->name: null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-8">
        <div class="checkbox checkbox-primary">
            <input type="checkbox" name="active" id="active" {{ isset($warehouse) && $warehouse->active == 1?'checked="checked"':'' }}>
            <label for="active">Ativo</label>
        </div>
    </div>
</div>

<div class="form-group m-b-0">
    <div class="col-sm-offset-2 col-sm-8">
        <button name="submit" class="btn btn-info waves-effect waves-light">Salvar</button>
    </div>
</div>