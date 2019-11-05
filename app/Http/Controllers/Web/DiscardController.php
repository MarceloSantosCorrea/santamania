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
     * @return \Illuminate\Http\Response
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
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $products = Product::where('active', 1)
                           ->orderBy('name')
                           ->get();

        return view('pages.discard.create', compact('products'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(DiscardRequest $request)
    {
        if (Discard::create($request->all())) {
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
     * @return \Illuminate\Http\Response
     */
    public function edit(Discard $discard)
    {
        $products = Product::where('active', 1)
                           ->orderBy('name')
                           ->get();

        return view('pages.discard.edit', compact('products', 'discard'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
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
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(Discard $discard)
    {
        if ($discard->delete()) {
            return redirect()
                ->route('web.discard.index')
                ->with('success', 'Deletado com sucesso');
        }

        return redirect()
            ->route('web.discard---.index')
            ->with('error', 'Erro ao deletar');
    }
}
