<div class="form-group">
    <label class="col-md-2 control-label" for="name">Name</label>
    <div class="col-md-8">
        <input type="text" name="name" id="name" class="form-control" value="{{ old('name', $supplier->name ?? null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label" for="color">Cor</label>
    <div class="col-md-2">
        <input type="color" name="color" id="color" class="form-control" value="{{ old('color', $supplier->color ?? null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group m-b-0">
    <div class="col-sm-offset-2 col-sm-8">
        <button name="submit" class="btn btn-info waves-effect waves-light">Salvar</button>
    </div>
</div>
