@extends('layouts.default')
@section('title', 'Início')
@push('styles')
    <style>
        .category_name {
            background: #5fbeaa
        }
    </style>
@endpush

@php $data = \App\Models\Filter::productFilterTable(); @endphp
@php $filtersDefault = \App\Models\Filter::getFiltersDefault(); @endphp

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <p class="text-muted page-title-alt">Olá {{ \Auth::user()->name }}</p>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <div class="btn-group pull-right">
                                <button type="button" class="btn btn-default dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">Filtros</button>
                                <ul class="dropdown-menu drop-menu-right scrollable-menu" id="dropdown-filters" role="menu">
                                    <li>
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <a href="javascript:void(0)" class="btn btn-dropbox btn-block waves-effect waves-light check-all">
                                                    Todos
                                                </a>
                                            </div>
                                            <div class="col-md-6">
                                                <a href="javascript:void(0)" class="btn btn-dropbox btn-block waves-effect waves-light remove-all">
                                                    Nenhum
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                    <div class="clearfix"></div>
                                    <li class="divider"></li>
                                    @php $filtersAvailable = \App\Models\Filter::where('active', 1)->get() @endphp
                                    @if($filtersAvailable->count())
                                        @foreach($filtersAvailable as $filter)
                                            <li>
                                                <a href="javascript:void(0)">
                                                    @php $checked = (count($data['header']) && in_array($filter->id, $filtersDefault)); @endphp
                                                    <input type="checkbox" value="{{ $filter->id }}" class="checkbox-filter" {{ $checked ? 'checked': null }} id="{{ $filter->name }}">
                                                    {{ $filter->name }}
                                                </a>
                                            </li>
                                        @endforeach
                                    @endif
                                </ul>
                            </div>
                            <h4 class="header-title m-t-0">{{ __('Listagem de produtos e saídas') }}</h4>
                            <div class="clearfix"></div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="rotate"></th>
                                            @if(count($data['header']))
                                                @foreach($data['header'] as $filterId => $filterName)
                                                    <th class="text-center rotate filter-{{ $filterId }} {{ !in_array($filterId, $filtersDefault) ? 'hide': null }}">
                                                        <div><span>{{ $filterName }}</span></div>
                                                    </th>
                                                @endforeach
                                            @endif
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if(count($data['categories']))
                                            @foreach($data['categories'] as $item)
                                                <tr class="category_name">
                                                    <td colspan="18" class="text-center">{{ $item['category']->name}}</td>
                                                </tr>
                                                @php $i = 0; @endphp
                                                @foreach($item['products'] as $product)
                                                    <tr style="{{ ($i % 2 != 0) ? 'background-color: #f8f9fa' : null }}">
                                                        <td class="text-nowrap" scope="row">{{ $product['product']->name }}</td>
                                                        @foreach($product['values'] as $key => $value)
                                                            <td class="text-center {{ !in_array($key, $filtersDefault) ? 'hide': null }} filter-{{ $key }}">{{ $value }}</td>
                                                        @endforeach
                                                    </tr>
                                                    @php $i++; @endphp
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
            </div>
        </div>
    </div>
    @include('layouts.components.footer')
@endsection

@push('scripts')
    <script>
        jQuery(document).ready(function () {
            var checkboxes    = document.querySelectorAll('input[type=checkbox]'),
                checkboxArray = Array.from(checkboxes);

            checkboxArray.forEach(function (checkbox) {
                checkbox.addEventListener('change', function () {
                    console.log('change');
                    if (this.checked) {
                        $('.filter-' + $(this).val()).each(function () {
                            $(this).removeClass('hide');
                        });
                    } else {
                        $('.filter-' + $(this).val()).each(function () {
                            $(this).addClass('hide');
                        });
                    }
                });
            });

            $('.dropdown-menu li').on('click', function (event) {

                if ($(event.target).is("a")) {

                    if ($(event.target).hasClass('remove-all')) {
                        $('#dropdown-filters').find('input[type=checkbox]').each(function () {
                            $(this).prop('checked', false).change();
                            $('.filter-' + $(this).val()).each(function () {
                                $(this).addClass('hide');
                            });
                        });
                    }

                    if ($(event.target).hasClass('check-all')) {
                        $('#dropdown-filters').find('input[type=checkbox]').each(function () {
                            $(this).prop('checked', true).change();
                            $('.filter-' + $(this).val()).each(function () {
                                $(this).removeClass('hide');
                            });
                        });
                    }

                    if ($(event.target).has('input').length) {
                        box = $(event.target).children('input');
                        if (!box.prop('checked')) {
                            box.prop('checked', true).first().trigger("change");
                            $('.filter-' + box.val()).each(function () {
                                $(this).removeClass('hide');
                            });
                        } else {
                            box.prop('checked', false).first().trigger("change");
                            $('.filter-' + box.val()).each(function () {
                                $(this).addClass('hide');
                            });
                        }
                        // console.log(checkbox.is('checked'));
                        // box.prop('checked', !box.prop('checked')).change();

                        // if (!checkbox.prop('checked')) {
                        //
                        //     checkbox.prop('checked', true).change();
                        //     console.log(checkbox.is('checked'));
                        // } else {
                        //     checkbox.prop('checked', false).change();
                        //     console.log(checkbox.is('checked'));
                        // }

                    }

                    return false;
                }
            });


        });
    </script>
@endpush

