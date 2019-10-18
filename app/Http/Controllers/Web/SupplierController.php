<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Http\Requests\SupplierRequest;
use App\Models\Supplier;
use Illuminate\Http\Request;

class SupplierController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if (\Gate::allows('list_suppliers')) {

            $params = $request->all();
            if (isset($params['search'])) {
                $data = Supplier::search($params['search'])->orderBy('name')->paginate(30);
            } else {
                $data = Supplier::orderBy('name')->paginate(30);
            }

            return view('pages.supplier.index', compact('data'));
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
        if (\Gate::allows('create_suppliers')) {

            return view('pages.supplier.create');
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
    public function store(SupplierRequest $request)
    {
        if (\Gate::allows('create_suppliers')) {
            if (Supplier::create($request->all())) {
                return redirect()
                    ->route('web.supplier.index')
                    ->with('success', 'Salvo com sucesso');
            }

            return redirect()
                ->route('web.supplier.index')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Supplier  $supplier
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Supplier $supplier)
    {
        if (\Gate::allows('edit_suppliers')) {

            return view('pages.supplier.edit', compact('supplier'));
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  SupplierRequest  $request
     * @param  Supplier  $supplier
     *
     * @return \Illuminate\Http\Response
     */
    public function update(SupplierRequest $request, Supplier $supplier)
    {
        if (\Gate::allows('edit_suppliers')) {
            $supplier->fill($request->all());

            if ($supplier->save()) {
                return redirect()
                    ->route('web.supplier.index')
                    ->with('success', 'Salvo com sucesso');
            }

            return redirect()
                ->route('web.supplier.index')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Supplier  $supplier
     *
     * @return \Illuminate\Http\Response
     * @throws \Exception
     */
    public function destroy(Supplier $supplier)
    {
        if (\Gate::allows('delete_suppliers')) {
            if ($supplier->delete()) {
                return redirect()
                    ->route('web.supplier.index')
                    ->with('success', 'Deletado com sucesso');
            }

            return redirect()
                ->route('web.supplier.index')
                ->with('error', 'Erro ao deletar');
        }

        return view('pages.acl.unauthorized');
    }
}
