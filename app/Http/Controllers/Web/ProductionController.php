<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\ProductionRequest;
use App\Models\Product;
use App\Models\Production;

class ProductionController extends AbstractController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (\Gate::allows('list_productions')) {
            $data = Production::with(['product'])
                ->orderBy('id', 'desc')
                ->paginate(30);

            return view('pages.production.index', compact('data'));
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
        if (\Gate::allows('create_productions')) {
            $products = Product::all();

            return view('pages.production.create', compact('products'));
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductionRequest $request)
    {
        if (\Gate::allows('create_productions')) {
            if (Production::create($request->all()))
                return redirect()
                    ->route('web.production.index')
                    ->with('success', 'Salvo com sucesso');

            return redirect()
                ->route('web.production.index')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Production $production)
    {
        if (\Gate::allows('edit_productions')) {
            $products = Product::all();

            return view('pages.production.edit', compact('products', 'production'));
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param ProductionRequest $request
     * @param Production $production
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(ProductionRequest $request, Production $production)
    {
        if (\Gate::allows('edit_productions')) {
            $production->fill($request->all());

            if ($production->save())
                return redirect()
                    ->route('web.production.index')
                    ->with('success', 'Salvo com sucesso');

            return redirect()
                ->route('web.production.index')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Production $production
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Production $production)
    {
        if (\Gate::allows('delete_productions')) {
            if ($production->delete())
                return redirect()
                    ->route('web.production.index')
                    ->with('success', 'Deletado com sucesso');

            return redirect()
                ->route('web.production.index')
                ->with('error', 'Erro ao deletar');
        }

        return view('pages.acl.unauthorized');
    }
}
