@extends('layouts.default')

@section('title', 'Relatórios')

@push('plugins')
    <link href="{{ asset('assets/plugins/morris/morris.css') }}" rel="stylesheet">
@endpush
@push('styles')
    <link href="{{ asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
@endpush

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title"> {{ __('Relatórios de produtos produzidos') }} </h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}"> {{ __('Home') }} </a>
                                </li>
                                <li>
                                    <a href="{{ route('web.report.index') }}"> {{ __('Relatórios') }} </a>
                                </li>
                                <li class="active">
                                    <span> {{ __('Produção') }} </span>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <div class="row m-b-10">
                                <div class="col-md-12">
                                    <form class="horizontal-form" method="post" action="{{ route('web.report.production') }}">
                                        {!! csrf_field() !!}
                                        <div class="form-row align-items-center">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label class="control-label" for="product_id">Produto</label>
                                                    <select name="product_id" id="product_id" class="form-control select2">
                                                        <option value="">Selecione...</option>
                                                        @foreach($products as $product)
                                                            <option value="{{ $product->id }}" {{ request()->product_id == $product->id ? 'selected': null }}>{{ $product->name }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label class="control-label" for="date_start">Data Início</label>
                                                    <input type="date" class="form-control" name="date_start" id="date_start" value="{{ request()->date_start }}">
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label class="control-label" for="date_end">Data Fim</label>
                                                    <input type="date" class="form-control" name="date_end" id="date_end" value="{{ request()->date_end }}">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <button name="submit" class="pull-right btn btn-info btn-lg waves-effect waves-light m-t-20">{{ __('Gerar') }}</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            @if(isset($data))
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="portlet">
                                            <div class="panel-collapse collapse show">
                                                <div class="portlet-body">
                                                    <div class="table-responsive">
                                                        <table class="table table-striped table-hover m-t-10">
                                                            <thead>
                                                                <tr>
                                                                    <th>{{ __('Produto') }}</th>
                                                                    <th>{{ __('Fornecedor') }}</th>
                                                                    <th class="text-right">{{ __('Total') }}</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                @foreach($data as $item)
                                                                    <tr>
                                                                        <td>{{ $item->product->name }}</td>
                                                                        <td>{{ $item->product->supplier ? $item->product->supplier->name : '-' }}</td>
                                                                        <td class="text-right">{{ $item->product->unitsMeasure->symbol == 'Un' ? number_format($item->total) : $item->total }} {{ $item->product->unitsMeasure->symbol }}</td>
                                                                    </tr>
                                                                @endforeach
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                {{--<div class="row">--}}
                                {{--    <div class="col-lg-12">--}}
                                {{--        <div class="portlet">--}}
                                {{--            <div class="panel-collapse collapse show">--}}
                                {{--                <div class="portlet-body">--}}
                                {{--                    <div id="morris-area-with-dotted" style="height: 300px;"></div>--}}
                                {{--                </div>--}}
                                {{--            </div>--}}
                                {{--        </div>--}}
                                {{--    </div>--}}
                                {{--</div>--}}
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @include('layouts.components.footer')
    </div>
@endsection

@push('scripts')
    <script src="{{ asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/morris/morris.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/raphael/raphael-min.js') }}"></script>
    <script>
        jQuery(document).ready(function () {
            $(".select2").select2();
        });
    </script>

    @if(isset($data))
        <script type="text/javascript">
            !function ($) {
                "use strict";
                var MorrisCharts                             = function () {
                };
                MorrisCharts.prototype.createAreaChartDotted = function (element, pointSize, lineWidth, data, xkey, ykeys, labels, Pfillcolor, Pstockcolor, lineColors) {
                    Morris.Bar({
                        element          : element,
                        data             : data,
                        xkey             : xkey,
                        ykeys            : ykeys,
                        stacked          : true,
                        labels           : labels,
                        xLabelAngle      : 45,
                        xLabelFormat     : function (d) {
                            var date = new Date(d.src.y);
                            return ("0" + (date.getDate())).slice(-2) + '/' + ("0" + (date.getMonth() + 1)).slice(-2) + '/' + date.getFullYear();
                        },
                        hideHover        : 'auto',
                        pointFillColors  : Pfillcolor,
                        pointStrokeColors: Pstockcolor,
                        resize           : true,
                        gridLineColor    : '#eef0f2',
                        barColors        : lineColors
                    });
                };
                MorrisCharts.prototype.init                  = function () {
                    var $areaDotData = {!! isset($data) ? $data : '[]' !!};
                    this.createAreaChartDotted('morris-area-with-dotted', 0, 0, $areaDotData, 'y', ['a'], ['Quantidade'], ['#ffffff'], ['#999999'], ['#5d9cec']);
                };

                $.MorrisCharts = new MorrisCharts;

                $.MorrisCharts.Constructor = MorrisCharts;
            }(window.jQuery),
                function ($) {
                    "use strict";
                    $.MorrisCharts.init();
                }(window.jQuery);
        </script>
    @endif
@endpush
