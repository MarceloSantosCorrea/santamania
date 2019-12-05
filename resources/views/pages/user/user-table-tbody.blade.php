@if ($data)
    @foreach ($data as $item)
        <tr>
            <th><input class="checkbox" type="checkbox"></th>
            <th scope="row">{{ $item->id }}</th>
            <td>{{ $item->name }}</td>
            <td>{{ $item->email }}</td>
            <td>{{ getStatus($item->active) }}</td>
            <td class="text-right">

                @can('edit_users')
                    <a href="/user/edit/{{ $item->id }}"
                       class="btn btn-primary btn-sm tooltips"
                       data-toggle="tooltip" data-placement="top"
                       title="Editar">
                        <i class="fa fa-pencil"></i>
                    </a>
                @endcan

                @can('delete_users')
                    <a onclick="bootbox_confirm('Tem certeza que deseja remover <strong>{{$item->name}}</strong>?', '{{ url("/user/destroy/" . $item->id) }}' )"
                       class="btn btn-danger btn-sm tooltips user-delete"
                       data-toggle="tooltip" data-placement="top"
                       title="Deletar">
                        <i class="fa fa-trash"></i>
                    </a>
                @endcan

            </td>
        </tr>
    @endforeach
@endif