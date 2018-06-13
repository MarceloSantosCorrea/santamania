@if ($data)
    @foreach ($data as $item)
        <tr>
            <td>{{ $item->label }}</td>
            @if(Gate::check('edit_productions') || Gate::check('delete_productions'))
            <td class="text-right">

                <a href="{{ route('web.acl.permission.edit', $item) }}"
                   class="btn btn-primary btn-sm tooltips"
                   data-toggle="tooltip" data-placement="top"
                   title="Editar">
                    <i class="fa fa-pencil"></i>
                </a>

                <button onclick="bootbox_confirm('Tem certeza que deseja remover <strong>{{$item->label}}</strong>?', '{{ route("web.acl.permission.destroy" , $item) }}' )"
                        class="btn btn-danger btn-sm tooltips user-delete"
                        data-toggle="tooltip" data-placement="top"
                        title="Deletar">
                    <i class="fa fa-trash"></i>
                </button>

            </td>
            @endif
        </tr>
    @endforeach
@endif

