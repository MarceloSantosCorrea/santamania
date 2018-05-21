@if ($data)
    @foreach ($data as $item)
        <tr>
            <td>{{ $item->label }}</td>
            <td class="text-right">
                <a href="{{ route('web.acl.permission.role.show', $item) }}"
                   class="btn btn-warning btn-sm tooltips"
                   data-toggle="tooltip" data-placement="top"
                   title="Permissões">
                    <i class="fa fa-user-secret"></i>
                </a>

                <a href="{{ route('web.acl.role.edit', $item) }}"
                   class="btn btn-primary btn-sm tooltips"
                   data-toggle="tooltip" data-placement="top"
                   title="Editar">
                    <i class="fa fa-pencil"></i>
                </a>

                <button onclick="bootbox_confirm('Tem certeza que deseja remover <strong>{{$item->label}}</strong>?', '{{ route("web.acl.role.destroy" , $item) }}' )"
                        class="btn btn-danger btn-sm tooltips user-delete"
                        data-toggle="tooltip" data-placement="top"
                        title="Deletar">
                    <i class="fa fa-trash"></i>
                </button>

            </td>
        </tr>
    @endforeach
@endif

