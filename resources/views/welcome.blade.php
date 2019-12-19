@extends('layouts.default')
@section('title', 'Início')
@push('styles')
    <style>
        .category_name {
            background: #5fbeaa
        }
    </style>
@endpush

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
                    <div class="col-sm-12">
                        <div class="card-box">
                            <h4 class="header-title m-t-0">{{ __('Listagem de produtos e saídas') }}</h4>

                            <div class="table-responsive">
                                <table class="table table-header-rotated">
                                    <thead>
                                        <tr>
                                            <th class="rotate"></th>
                                            @foreach(\App\Models\Filter::all() as $filters)
                                                <th class="rotate">
                                                    <div><span>{{ $filters->name }}</span></div>
                                                </th>
                                            @endforeach
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if($categories->count())
                                            @foreach($categories as $item)
                                                <tr class="category_name">
                                                    <td colspan="18" class="text-center">{{ $item['name']}}</td>
                                                </tr>
                                                @foreach($item['products'] as $product)
                                                    <?php $days = json_decode($product->productDailyChecklist->days);?>
                                                    <tr style="{{ ($loop->index % 2 == 0) ? 'background-color: #f8f9fa' : null }}">
                                                        <td class="text-nowrap" scope="row">{{ $product->name }}</td>
                                                        <td>{{ $days[0] }} </td>
                                                        <td>{{ $days[1] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                        <td>{{ $days[2] }}</td>
                                                    </tr>
                                                @endforeach
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-sm-6">
                        <div class="card-box">
                            <h4 class="header-title m-t-0">{{ __('Listagem de produtos e saídas') }}</h4>

                            <div class="table-responsive">
                                <table class="table table-bordered">
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
                                        @if($categories->count())
                                            @foreach($categories as $item)
                                                <tr class="category_name">
                                                    <th colspan="4" class="text-center">{{ $item['name']}}</th>
                                                </tr>
                                                @foreach($item['products'] as $product)
                                                    <?php $days = json_decode($product->productDailyChecklist->days);?>
                                                    <tr style="{{ ($loop->index % 2 == 0) ? 'background-color: #f8f9fa' : null }}">
                                                        <th class="text-nowrap" scope="row">{{ $product->name }}</th>
                                                        <td class="text-center">{{ $days[0] }} </td>
                                                        <td class="text-center">{{ $days[1] }}</td>
                                                        <td class="text-center">{{ $days[2] }}</td>
                                                    </tr>
                                                @endforeach
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card-box">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th><small>{{ __('Produtos') }}</small></th>
                                            <th class="text-center" style="width: 100px">
                                                <small>{{ __('Atual') }}</small>
                                            </th>
                                            <th class="text-center" style="width: 100px">
                                                <small>{{ __('Prev. Término') }}</small>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if($products->count())
                                            @foreach($products as $product)
                                                <tr>
                                                    <th class="text-nowrap" scope="row">{{ $product->name }}</th>
                                                    <td class="text-center">{{ "{$product->current_quantity} {$product->unitsMeasure->symbol}" }}</td>
                                                    <td class="text-center">
                                                        {{--{{ $checklistProduct->product->prevision ? \Carbon\Carbon::parse($checklistProduct->product->prevision->prevision_date)->format('d/m/Y'): null }}--}}
                                                    </td>
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
                                            @php /** @var $task \App\Models\Task */ @endphp
                                            @foreach($tasks as $task)
                                                <tr>
                                                    <th style="{{ ($task->product->supplier) ? "background-color: " . $task->product->supplier->color : null }}"></th>
                                                    <th>{{ $task->product->name }}</th>
                                                    <td>{{ $task->description }}</td>
                                                    <td class="text-center">
                                                        <form class="form-horizontal" method="post" action="{{ route('web.task.finalize', $task) }}">
                                                            @csrf @method('put')
                                                            <button type="submit"
                                                                    class="btn btn-warning btn-sm tooltips"
                                                                    data-toggle="tooltip" data-placement="top"
                                                                    title="Finalizar tarefa">
                                                                <i class="fa fa-check"></i>
                                                            </button>
                                                        </form>
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
