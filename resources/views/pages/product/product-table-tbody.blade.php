@if ($data)

    @foreach ($data as $item)
        <tr>
            <th><input class="checkbox" type="checkbox"></th>
            <th scope="row">{{ $item->id }}</th>
            <td>{{ $item->name }}</td>
            <td>{{ $item->productCategory->name }}</td>
            <td>{{ getStatus($item->active) }}</td>
            <td class="text-right">

                <a href="{{ route('web.product.edit', $item) }}"
                   class="btn btn-primary btn-sm tooltips"
                   data-toggle="tooltip" data-placement="top"
                   title="Editar">
                    <i class="fa fa-pencil"></i>
                </a>

                <button onclick="remove('Tem certeza que deseja remover <strong>{{$item->name}}</strong>?', '{{ route('web.product.destroy', $item) }}')"
                        class="btn btn-danger btn-sm tooltips user-delete"
                        data-toggle="tooltip" data-placement="top"
                        title="Deletar">
                    <i class="fa fa-trash"></i>
                </button>

            </td>
        </tr>
    @endforeach
@endif