@extends('layouts.default')
@section('title', 'Warehouses')
@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <p class="text-muted page-title-alt">Olá {{ auth()->user()->name }}</p>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-sm-6">
                        <div class="card-box">
                            <h4 class="header-title m-t-0">{{ __('Listagem de produtos e saídas') }}</h4>

                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th class="text-center">
                                                <small>Segunda à Quinta</small>
                                            </th>
                                            <th class="text-center">
                                                <small>Sexta e Domingo</small>
                                            </th>
                                            <th class="text-center">
                                                <small>Sábados e Feriados</small>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if($products)
                                            @foreach($products as $product)
                                                <?php $days = json_decode($product->days); ?>
                                                <tr>
                                                    <th class="text-nowrap" scope="row">{{ $product->product->name }}</th>
                                                    <td class="text-center">{{ $days[0] }}</td>
                                                    <td class="text-center">{{ $days[1] }}</td>
                                                    <td class="text-center">{{ $days[2] }}</td>
                                                </tr>
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card-box">
                            <h4 class="header-title m-t-0">{{ __('Totais') }}</h4>

                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th class="text-center" style="width: 60px">
                                                <small>{{ __('Atual') }}</small>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if($checklistPreview)
                                            @foreach($checklistPreview->checklistProduct as $checklistProduct)
                                                <tr>
                                                    <th class="text-nowrap" scope="row">{{ $checklistProduct->product->name }}</th>
                                                    <td class="text-center">{{ $checklistProduct->total }}</td>
                                                </tr>
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card-box">
                            <h4 class="header-title m-t-0">{{ __('Tarefas') }}</h4>
                            @if($tasks->count())
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped">
                                        <tbody>

                                            @foreach($tasks as $task)
                                                <tr>
                                                    <th>{{ $task->product->name }}</th>
                                                    <td class="text-center">
                                                        <a onclick="bootbox_confirm('Tem certeza que deseja finalizar esta tarefa?', '')"
                                                           class="btn btn-success btn-sm tooltips"
                                                           data-toggle="tooltip" data-placement="top"
                                                           title="Finalizar tarefa">
                                                            <i class="fa fa-check"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                            @endforeach

                                        </tbody>
                                    </table>
                                </div>
                            @else
                                <p>{{ __('Não há tarefas.') }}</p>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @include('layouts.components.footer')
    </div>
@endsection
