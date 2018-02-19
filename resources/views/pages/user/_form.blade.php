{!! csrf_field() !!}

<div class="form-group">
    <label class="col-md-2 control-label" for="firstname">Nome</label>
    <div class="col-md-8">
        <input type="text" name="firstname" id="firstname" class="form-control" value="{{ old('name', isset($user)? $user->firstname: null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label" for="lastname">Sobrenome</label>
    <div class="col-md-8">
        <input type="text" name="lastname" id="lastname" class="form-control" value="{{ old('name', isset($user)? $user->lastname: null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label" for="email">E-mail</label>
    <div class="col-md-8">
        <input type="text" name="email" id="email_fake" autocomplete="off" style="display: none;"/>
        <input type="text" name="email" id="email" class="form-control" value="{{ old('name', isset($user)? $user->email: null) }}">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label" for="password">Senha</label>
    <div class="col-md-8">
        <input type="password" name="password" id="password" class="form-control">
        <span class="help-block"></span>
    </div>
</div>

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-8">
        <div class="checkbox checkbox-primary">
            <input type="checkbox" name="active" id="active" {{ isset($user) && $user->active == 1?'checked="checked"':'' }}>
            <label for="active">Ativo</label>
        </div>
    </div>
</div>

<div class="form-group m-b-0">
    <div class="col-sm-offset-2 col-sm-8">
        <button name="submit" class="btn btn-info waves-effect waves-light">Salvar</button>
    </div>
</div>