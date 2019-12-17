<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\DiscardRequest;
use App\Models\Discard;
use App\Models\Product;
use Illuminate\Http\Request;

class DiscardController extends AbstractController
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
            $data = Discard::search($params['search'])->orderBy('id', 'desc')->paginate(30);
        } else {
            $data = Discard::with(['product'])->orderBy('id', 'desc')->paginate(30);
        }

        return view('pages.discard.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        $products = Product::query()
                           ->where('active', 1)
                           ->orderBy('name')
                           ->bySector()
                           ->get();

        return view('pages.discard.create', compact('products'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  DiscardRequest  $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(DiscardRequest $request)
    {
        if (Discard::query()->create($request->all())) {
            return redirect()
                ->route('web.discard.index')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.discard.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Mostrar o Formulário para editar o descarte
     *
     * @param  Discard  $discard
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit(Discard $discard)
    {
        $products = Product::query()
                           ->where('active', 1)
                           ->orderBy('name')
                           ->bySector()
                           ->get();

        return view('pages.discard.edit', compact('products', 'discard'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  DiscardRequest  $request
     * @param  Discard  $discard
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(DiscardRequest $request, Discard $discard)
    {
        $discard->fill($request->all());

        if ($discard->save()) {
            return redirect()
                ->route('web.discard.index')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.discard.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Discard  $discard
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy(Discard $discard)
    {
        if ($discard->delete()) {
            return redirect()
                ->route('web.discard.index')
                ->with('success', 'Deletado com sucesso');
        }

        return redirect()
            ->route('web.discard.index')
            ->with('error', 'Erro ao deletar');
    }
}
