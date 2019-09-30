<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\WarehouseRequest;
use App\Models\Warehouse;

class WarehouseController extends AbstractController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (\Gate::allows('list_warehouses')) {
            $data = Warehouse::paginate(10);

            return view('pages.warehouse.index', compact('data'));
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (\Gate::allows('create_warehouses')) {
            return view('pages.warehouse.create');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(WarehouseRequest $request)
    {
        if (\Gate::allows('create_warehouses')) {
            if (Warehouse::create($request->all())) {
                return redirect()
                    ->route('web.warehouse.index')
                    ->with('success', 'Salvo com sucesso');
            }

            return redirect()
                ->route('web.warehouse.index')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Warehouse $warehouse)
    {
        if (\Gate::allows('edit_warehouses')) {
            return view('pages.warehouse.edit', compact('warehouse'));
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  WarehouseRequest  $request
     * @param  Warehouse  $warehouse
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(WarehouseRequest $request, Warehouse $warehouse)
    {
        if (\Gate::allows('edit_warehouses')) {
            $warehouse->fill($request->all());

            if ($warehouse->save()) {
                return redirect()
                    ->route('web.warehouse.index')
                    ->with('success', 'Salvo com sucesso');
            }

            return redirect()
                ->route('web.warehouse.index')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(Warehouse $warehouse)
    {
        if (\Gate::allows('delete_warehouses')) {
            if ($warehouse->delete()) {
                return redirect()
                    ->route('web.warehouse.index')
                    ->with('success', 'Deletado com sucesso');
            }

            return redirect()
                ->route('web.warehouse.index')
                ->with('error', 'Erro ao deletar');
        }

        return view('pages.acl.unauthorized');
    }
}
