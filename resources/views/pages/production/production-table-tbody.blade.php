@if ($data)
    @foreach ($data as $item)
        <tr>
            <th><input class="checkbox" type="checkbox"></th>
            <th scope="row">{{ $item->id }}</th>
            <td>{{ (new \DateTime($item->date))->format('d/m/Y') }}</td>
            <td>{{ $item->product->name }}</td>
            <td>{{ $item->quantity }}</td>
            <td class="text-right">

                <a href="{{ route('web.production.edit', $item) }}"
                   class="btn btn-primary btn-sm tooltips"
                   data-toggle="tooltip" data-placement="top"
                   title="Editar">
                    <i class="fa fa-pencil"></i>
                </a>

                <a onclick="remove('Tem certeza que deseja remover <strong>{{$item->name}}</strong>?', '{{ route('web.production.destroy', $item) }}')"
                   class="btn btn-danger btn-sm tooltips user-delete"
                   data-toggle="tooltip" data-placement="top"
                   title="Deletar">
                    <i class="fa fa-trash"></i>
                </a>

            </td>
        </tr>
    @endforeach
@endif