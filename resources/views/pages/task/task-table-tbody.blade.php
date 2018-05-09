@if ($data)
    @foreach ($data as $item)
        <tr>
            <th scope="row">{{ $item->id }}</th>
            <td>{{ $item->product->name }}</td>
            <td>{{ $item->description }}</td>
            <td class="text-right">

                <a href="{{ route('web.task.edit', $item) }}"
                   class="btn btn-primary btn-sm tooltips"
                   data-toggle="tooltip" data-placement="top"
                   title="Editar">
                    <i class="fa fa-pencil"></i>
                </a>

                <a onclick="bootbox_confirm('Tem certeza que deseja remover esta tarefa?', '{{ route('web.task.destroy', $item) }}')"
                   class="btn btn-danger btn-sm tooltips user-delete"
                   data-toggle="tooltip" data-placement="top"
                   title="Deletar">
                    <i class="fa fa-trash"></i>
                </a>

            </td>
        </tr>
    @endforeach
@endif