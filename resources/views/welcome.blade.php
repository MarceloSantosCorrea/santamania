@extends('layouts.default')
@section('title', 'Warehouses')
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
                                        @if($categories)
                                            @foreach($categories as $category)

                                                <tr class="category_name">
                                                    <th colspan="4" class="text-center">{{ $category->name }}</th>
                                                </tr>

                                                @if($category->product)
                                                    @foreach($category->product as $product)
                                                        <?php $days = json_decode($product->productDailyChecklist->days);?>
                                                        <tr style="{{ ($loop->index % 2 == 0) ? 'background-color: #f8f9fa' : null }}">
                                                            <th class="text-nowrap" scope="row">{{ $product->name }}</th>
                                                            <td class="text-center">{{ $days[0] }} </td>
                                                            <td class="text-center">{{ $days[1] }}</td>
                                                            <td class="text-center">{{ $days[2] }}</td>
                                                        </tr>
                                                    @endforeach
                                                @endif
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card-box">
                            <h4 class="header-title m-t-0">{{ __('Totais') }}
                                @if($checklistPreview)
                                    <span class="pull-right" style="color: red">{{ (new \DateTime($checklistPreview->date))->format('d/m/Y') }}</span>
                                @endif
                            </h4>

                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th class="text-center" style="width: 80px">
                                                <small>{{ __('Atual') }}</small>
                                            </th>
                                            <th class="text-center" style="width: 100px">
                                                <small>{{ __('Prev. Término') }}</small>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if($checklistPreview)
                                            @foreach($checklistPreview->checklistProduct as $checklistProduct)
                                                <tr>
                                                    <th class="text-nowrap" scope="row">{{ $checklistProduct->product->name }}</th>
                                                    <td class="text-center">{{ "{$checklistProduct->total} {$checklistProduct->product->unitsMeasure->symbol}" }}</td>
                                                    <td class="text-center">
                                                        {{ $checklistProduct->product->prevision ? \Carbon\Carbon::parse($checklistProduct->product->prevision->prevision_date)->format('d/m/Y'): null }}
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

                                            @foreach($tasks as $task)
                                                <tr>
                                                    <th>{{ $task->product->name }}</th>
                                                    <td>{{ $task->description }}</td>
                                                    <td class="text-center">
                                                        <form class="form-horizontal" method="post" action="{{ route('web.task.finalize', $task) }}">
                                                            {!! csrf_field() !!}
                                                            {{ method_field('PUT') }}
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
