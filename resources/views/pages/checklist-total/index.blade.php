@extends('layouts.default')

@section('title', 'Checklists')

@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="page-header-2">
                            <h4 class="page-title"> {{ __('Checklist') }}
                                <span style="color: red">{{ \Carbon\Carbon::parse($checklist->date)->format('d/m/Y') }}</span>
                            </h4>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="{{ route('home') }}"> {{ __('Home') }} </a>
                                </li>
                                <li class="active">
                                    <a href="{{ route('web.checklist.index') }}"> {{ __('Checklists') }} </a>
                                </li>
                                <li class="active">
                                    <span> {{ __('Checklist Fechamento') }} </span>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-sm-12">
                        <div class="card-box">
                            <div class="row">
                                <div class="col-lg-12">
                                    <ul class="pager">
                                        <li class="center">
                                            @if($checklistAnterior)
                                                <a href="{{ route('web.checklist-totals.index', $checklistAnterior) }}">←</a>
                                            @endif
                                            <span style="color: red">{{ \Carbon\Carbon::parse($checklist->date)->format('d/m/Y') }}</span>
                                            @if($checklistPosterior)
                                                <a href="{{ route('web.checklist-totals.index', $checklistPosterior) }}">→</a>
                                            @endif
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            @include('layouts.components.alerts')
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover m-t-10">
                                            <thead>
                                                <tr>
                                                    <th>{{ __('Produto') }}</th>
                                                    <th>{{ __('Total') }}</th>
                                                    <th>{{ __('Saída') }}</th>
                                                    <th>{{ __('Descarte') }}</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @if($checklistTotal)
                                                    @foreach($checklistTotal as $checklistProduct)
                                                        <tr>
                                                            <td>{{ $checklistProduct->checklistProduct->product->name }}</td>
                                                            <td>{{ $checklistProduct->total }} {{ $checklistProduct->checklistProduct->product->unitsMeasure->symbol }}</td>
                                                            <td>{{ $checklistProduct->difference }}</td>
                                                            <td>
                                                                @php $discard = \App\Models\Discard::where([
                                                              'product_id' => $checklistProduct->checklistProduct->product_id,
                                                              'date' => (new \DateTime($checklistProduct->checklist->date))->format('Y-m-d')
                                                          ])->first() @endphp
                                                                @if($discard)
                                                                    {{ $discard->quantity }} {{ $checklistProduct->checklistProduct->product->unitsMeasure->symbol }}
                                                                @else
                                                                    -
                                                                @endif
                                                            </td>
                                                        </tr>
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
