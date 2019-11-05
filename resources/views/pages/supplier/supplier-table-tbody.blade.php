@if ($data)
    @php /** @var $item \App\Models\Supplier */ @endphp
    @foreach ($data as $item)
        <tr>
            <th><input class="checkbox" type="checkbox"></th>
            <th scope="row">{{ $item->id }}</th>
            <td>{{ $item->name }}</td>
            <td>
                <span class="btn p-l-r-10" style="background-color: {{ $item->color }}"> </span>
            </td>
            @if(Gate::check('edit_suppliers') || Gate::check('delete_suppliers'))
                <td class="text-right">

                    @can('edit_suppliers')
                        <a href="{{ route('web.supplier.edit', $item) }}"
                           class="btn btn-primary btn-sm tooltips"
                           data-toggle="tooltip" data-placement="top"
                           title="Editar">
                            <i class="fa fa-pencil"></i>
                        </a>
                    @endcan

                    @can('delete_suppliers')
                        <a onclick="bootbox_confirm('Tem certeza que deseja remover o Fornecedor <strong>{{$item->name }}</strong>?', '{{ route('web.supplier.destroy', $item) }}')"
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
