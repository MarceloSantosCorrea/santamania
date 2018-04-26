@if ($data)
    @foreach ($data as $item)
        <tr>
            <th><input class="checkbox" type="checkbox"></th>
            <th scope="row">{{ $item->id }}</th>
            <td>{{ (new \DateTime($item->date))->format('d/m/Y') }}</td>
            <td>{{ getStatusChecklist($item->status) }}</td>
            <td class="text-right">

                @if($item->status == 1)

                    <form class="form-horizontal" method="post" action="{{ route('web.checklist-actions.close', $item) }}">
                        {!! csrf_field() !!}
                        <button type="submit"
                                class="btn btn-warning btn-sm tooltips"
                                data-toggle="tooltip" data-placement="top"
                                title="Fechar">
                            <i class="fa fa-window-close"></i>
                        </button>

                        <a href="{{ route('web.checklist.show', $item) }}"
                           class="btn btn-success btn-sm tooltips"
                           data-toggle="tooltip" data-placement="top"
                           title="Produtos">
                            <i class="fa fa-folder-open"></i>
                        </a>

                        <a href="{{ route('web.checklist.edit', $item) }}"
                           class="btn btn-primary btn-sm tooltips"
                           data-toggle="tooltip" data-placement="top"
                           title="Editar">
                            <i class="fa fa-pencil"></i>
                        </a>

                        <button onclick="bootbox_confirm('Tem certeza que deseja remover <strong>{{(new \DateTime($item->date))->format('d/m/Y')}}</strong>?', '{{ route('web.checklist.destroy', $item) }}')"
                                class="btn btn-danger btn-sm tooltips user-delete"
                                data-toggle="tooltip" data-placement="top"
                                title="Deletar">
                            <i class="fa fa-trash"></i>
                        </button>
                    </form>


                @endif

            </td>
        </tr>
    @endforeach
@endif