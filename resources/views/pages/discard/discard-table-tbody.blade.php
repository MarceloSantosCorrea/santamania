@if ($data)
    @php /** @var $item \App\Models\Production */ @endphp
    @foreach ($data as $item)
        <tr>
            <th><input class="checkbox" type="checkbox"></th>
            <th scope="row">{{ $item->id }}</th>
            <td>{{ (new \DateTime($item->date))->format('d/m/Y') }}</td>
            <td>{{ $item->product->name }}</td>
            <td>{{ number_format($item->quantity, 3) }} {{ $item->product->unitsMeasure->symbol }}</td>
            @if(Gate::check('edit_discards') || Gate::check('delete_discards'))
                <td class="text-right">

                    @can('edit_discards')
                        <a href="{{ route('web.discard.edit', $item) }}"
                           class="btn btn-primary btn-sm tooltips"
                           data-toggle="tooltip" data-placement="top"
                           title="Editar">
                            <i class="fa fa-pencil"></i>
                        </a>
                    @endcan

                    @can('delete_discards')
                        <a onclick="bootbox_confirm('Tem certeza que deseja remover a produção de <strong>{{$item->product->name }}</strong>?', '{{ route('web.discard.destroy', $item) }}')"
                           class="btn btn-danger btn-sm tooltips user-delete"
                           data-toggle="tooltip" data-placement="top"
                           title="Deletar">
                            <i class="fa fa-trash"></i>
                        </a>
                    @endcan
                </td>
            @endif
        </tr>
    @endforeach
@endif
