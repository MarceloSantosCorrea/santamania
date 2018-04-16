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
        $data = Production::with(['product'])
            ->orderBy('id', 'desc')->paginate(10);

        return view('pages.production.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products = Product::all();

        return view('pages.production.create', compact('products'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductionRequest $request)
    {
        if (Production::create($request->all()))
            return redirect()
                ->route('web.production.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.production.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Production $production)
    {
        $products = Product::all();

        return view('pages.production.edit', compact('products', 'production'));
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
        $production->fill($request->all());

        if ($production->save())
            return redirect()
                ->route('web.production.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.production.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Production $production
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Production $production)
    {
        if ($production->delete())
            return redirect()
                ->route('web.production.index')
                ->with('success', 'Deletado com sucesso');

        return redirect()
            ->route('web.production.index')
            ->with('error', 'Erro ao deletar');
    }
}
