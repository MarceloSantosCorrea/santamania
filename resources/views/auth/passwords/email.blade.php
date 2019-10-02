@extends('layouts.auth')

@section('content')
    <div class="wrapper-page">
        <div class="card-box">
            <div class="panel-heading">
                <h3 class="text-center">
                    <strong class="text-custom">P</strong>izza
                    <strong class="text-custom">P</strong>lace
                </h3>
            </div>
            <div class="p-20">
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif
                <form class="form-horizontal m-t-20" method="POST" action="{{ route('password.email') }}">
                    {{ csrf_field() }}

                    <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">

                        <div class="col-12">
                            <input id="email" type="text" class="form-control" name="email" value="{{ old('email') }}" placeholder="E-mail" required autofocus>

                            @if ($errors->has('email'))
                                <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                            @endif
                        </div>
                    </div>

                    <div class="form-group text-center m-t-40">
                        <div class="col-12">
                            <button class="btn btn-pink btn-block text-uppercase waves-effect waves-light" type="submit"> Enviar Link para rest de senha
                            </button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
@endsection
