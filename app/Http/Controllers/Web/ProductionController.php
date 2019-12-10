<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\ProductionRequest;
use App\Models\Product;
use App\Models\Production;
use Illuminate\Http\Request;

class ProductionController extends AbstractController
{
    /**
     * Display a listing of the resource.
     *
     * @param  Request  $request
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        $params = $request->all();
        if (isset($params['search'])) {
            $data = (new Production)->search($params['search'])->orderBy('id', 'desc')->paginate(30);
        } else {
            $data = Production::with(['product'])->orderBy('id', 'desc')->paginate(30);
        }

        return view('pages.production.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        $products = Product::where('active', 1)
                           ->orderBy('name')
                           ->bySector()
                           ->get();

        return view('pages.production.create', compact('products'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  ProductionRequest  $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(ProductionRequest $request)
    {
        if (Production::create($request->all())) {
            return redirect()
                ->route('web.production.index')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.production.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Production  $production
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit(Production $production)
    {
        $products = Product::where('active', 1)->bySector()->orderBy('name')->get();

        return view('pages.production.edit', compact('products', 'production'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  ProductionRequest  $request
     * @param  Production  $production
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(ProductionRequest $request, Production $production)
    {
        $production->fill($request->all());

        if ($production->save()) {
            return redirect()
                ->route('web.production.index')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.production.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Production  $production
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\View\View
     * @throws \Exception
     */
    public function destroy(Production $production)
    {
        if ($production->delete()) {
            return redirect()
                ->route('web.production.index')
                ->with('success', 'Deletado com sucesso');
        }

        return redirect()
            ->route('web.production.index')
            ->with('error', 'Erro ao deletar');
    }
}
