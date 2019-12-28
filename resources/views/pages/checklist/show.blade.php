@extends('layouts.default')

@section('title', 'Checklists')

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title"> {{ __('Checklist Produtos') }} </h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}"> {{ __('Home') }} </a>
                                </li>
                                <li class="active">
                                    <a href="{{ route('web.checklist.index') }}"> {{ __('Checklists') }} </a>
                                </li>
                                <li class="active">
                                    <span> {{ __('Checklist Produtos') }} </span>
                                </li>
                                <li class="pull-right">
                                    <span style="color: red">{{ (new \DateTime($checklist->date))->format('d/m/Y') }}</span>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-sm-12">
                        <div class="card-box">
                            @include('layouts.components.alerts')
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="fixed-table-toolbar">
                                        <div class="search">
                                            <input class="form-control" type="text" placeholder="Localizar">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="fixed-table-toolbar">
                                        @can('close_checklists')
                                            <form class="form-horizontal pull-right" method="post" action="{{ route('web.checklist-actions.close', $checklist) }}">
                                                {!! csrf_field() !!}
                                                {{ method_field('PATCH') }}
                                                <button type="submit"
                                                        class="btn btn-primary btn-sm tooltips"
                                                        data-toggle="tooltip" data-placement="top"
                                                        title="Fechar">
                                                    {{ __('Fechar') }}
                                                </button>
                                            </form>
                                        @endcan
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover m-t-10">
                                            <thead>
                                                <tr>
                                                    <th>{{ __('Produto') }}</th>
                                                    <th>{{ __('Total') }}</th>
                                                    <th>{{ __('Status') }}</th>
                                                    <th class="text-center" style="width: 150px">{{ __('Options') }}</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @if($checklist->checklistSectors->count())
                                                    @foreach($checklist->checklistSectors->sortBy('name') as $sector)
                                                        <tr>
                                                            <th colspan="4" class="text-center" style="background-color: rgba(29,145,53,0.19)">{{ $sector->name }}</th>
                                                        </tr>
                                                        @foreach($sector->products as $product)
                                                            <?php
                                                            if ($product->active != 1) {
                                                                continue;
                                                            }

                                                            $checklistProduct = null;
                                                            if ($product->checklistProduct) {
                                                                $checklistProduct = $product->checklistProduct->where([
                                                                    'checklist_id' => $checklist->id,
                                                                    'product_id'   => $product->id
                                                                ])->first();
                                                            }

                                                            $total = $checklistProduct->total ?? 0;

                                                            $alterado = ($checklistProduct && $checklistProduct->quantities->count()) ? true : false;
                                                            ?>
                                                            <tr>
                                                                <td>{{ $product->name }}</td>
                                                                <td>{{ $total }} {{ $product->unitsMeasure->symbol }}</td>
                                                                <td>
                                                                <span class="label label-{{ $alterado ? 'primary' : 'danger'  }}">
                                                                    {{ $alterado ? 'Conferido' : 'Conferir' }}
                                                                </span>
                                                                </td>
                                                                <td>
                                                                    <a href="{{ route( $checklistProduct ? 'web.checklist-product.edit' : 'web.checklist-product.create',[$checklist, $product]) }}"
                                                                       class="btn btn-success btn-sm tooltips"
                                                                       data-toggle="tooltip" data-placement="top"
                                                                       title="Contar">
                                                                        <i class="fa fa-bars"></i>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        @endforeach
                                                    @endforeach
                                                @endif
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="fixed-table-pagination">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @include('layouts.components.footer')
    </div>
@endsection

@push('scripts')
    <script src="{{ asset('assets/plugins/bootbox/bootbox.min.js') }}"></script>
    <script src="{{ asset('assets/js/bootbox_confirm.js') }}"></script>
@endpush
