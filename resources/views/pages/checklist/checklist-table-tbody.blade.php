@if ($data)
    @foreach ($data as $item)
        <tr>
            <td>{{ (new \DateTime($item->date))->format('d/m/Y') }}</td>
            <td>{{ getStatusChecklist($item->status) }}</td>
            <td class="text-right">

                @if($item->status == 1)

                    <form class="form-horizontal" method="post" action="{{ route('web.checklist-actions.close', $item) }}">
                        {!! csrf_field() !!}
                        {{ method_field('PATCH') }}
                        @can('close_checklists')
                            <button type="submit"
                                    class="btn btn-warning btn-sm tooltips"
                                    data-toggle="tooltip" data-placement="top"
                                    title="Fechar">
                                <i class="fa fa-window-close"></i>
                            </button>
                        @endcan
                        @can('show_checklists')
                            <a href="{{ route('web.checklist.show', $item) }}"
                               class="btn btn-success btn-sm tooltips"
                               data-toggle="tooltip" data-placement="top"
                               title="Produtos">
                                <i class="fa fa-folder-open"></i>
                            </a>
                        @endcan
                        @can('edit_checklists')
                            <a href="{{ route('web.checklist.edit', $item) }}"
                               class="btn btn-primary btn-sm tooltips"
                               data-toggle="tooltip" data-placement="top"
                               title="Editar">
                                <i class="fa fa-pencil"></i>
                            </a>
                        @endcan
                        @can('delete_checklists')
                            <a onclick="bootbox_confirm('Tem certeza que deseja remover <strong>{{(new \DateTime($item->date))->format('d/m/Y')}}</strong>?', '{{ route('web.checklist.destroy', $item) }}')"
                               class="btn btn-danger btn-sm tooltips user-delete"
                               data-toggle="tooltip" data-placement="top"
                               title="Deletar">
                                <i class="fa fa-trash"></i>
                            </a>
                        @endcan
                    </form>
                @else

                    <a onclick="bootbox_confirm('Tem certeza que deseja reabrir o checklist <strong>{{(new \DateTime($item->date))->format('d/m/Y')}}</strong>?', '{{ route('web.checklist-actions.reopen', $item) }}')"
                       class="btn btn-danger btn-sm tooltips"
                       data-toggle="tooltip" data-placement="top"
                       title="Reabrir Checklist">
                        <i class="fa fa-upload"></i>
                    </a>

                    <a href="{{ route('web.checklist-totals.index', $item) }}"
                       class="btn btn-success btn-sm tooltips"
                       data-toggle="tooltip" data-placement="top"
                       title="Totais">
                        <i class="fa fa-folder-open"></i>
                    </a>

                @endif

            </td>
        </tr>
    @endforeach
@endif