<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\WarehouseRequest;
use App\Models\Warehouse;
use App\Http\Controllers\Controller;

class WarehouseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Warehouse::paginate();

        return view('pages.warehouse.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.warehouse.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(WarehouseRequest $request)
    {
        if (Warehouse::create($request->all()))
            return redirect()
                ->route('web.warehouse.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.warehouse.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Warehouse $warehouse)
    {
        return view('pages.warehouse.edit', compact('warehouse'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(WarehouseRequest $request, Warehouse $warehouse)
    {
        $warehouse->fill($request->all());

        if ($warehouse->save())
            return redirect()
                ->route('web.warehouse.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.warehouse.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Warehouse $warehouse)
    {
        if ($warehouse->delete())
            return redirect()
                ->route('web.warehouse.index')
                ->with('success', 'Deletado com sucesso');

        return redirect()
            ->route('web.warehouse.index')
            ->with('error', 'Erro ao deletar');
    }
}
