@if ($data)
    @foreach ($data as $item)
        <tr>
            <th><input class="checkbox" type="checkbox"></th>
            <td>{{ $item->name }}</td>
            <td>{{ getStatus($item->active) }}</td>
            <td class="text-right">

                <a href="{{ route('web.warehouse.edit', $item) }}"
                   class="btn btn-primary btn-sm tooltips"
                   data-toggle="tooltip" data-placement="top"
                   title="Editar">
                    <i class="fa fa-pencil"></i>
                </a>

                <a onclick="bootbox_confirm('Tem certeza que deseja remover?', '{{ route('web.warehouse.destroy', $item)}}' )"
                   class="btn btn-danger btn-sm tooltips user-delete"
                   data-toggle="tooltip" data-placement="top"
                   title="Deletar">
                    <i class="fa fa-trash"></i>
                </a>

            </td>
        </tr>
    @endforeach
@endif