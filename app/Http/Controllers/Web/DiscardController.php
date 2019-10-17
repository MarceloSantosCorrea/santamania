<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Http\Requests\DiscardRequest;
use App\Models\Discard;
use App\Models\Product;
use Illuminate\Http\Request;

class DiscardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if (\Gate::allows('list_discards')) {
            $params = $request->all();
            if (isset($params['search'])) {
                $data = Discard::search($params['search'])->orderBy('id', 'desc')->paginate(30);
            } else {
                $data = Discard::with(['product'])->orderBy('id', 'desc')->paginate(30);
            }

            return view('pages.discard.index', compact('data'));
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
            $products = Product::where('active', 1)->get();

            return view('pages.discard.create', compact('products'));
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
    public function store(DiscardRequest $request)
    {
        if (\Gate::allows('create_discards')) {
            if (Discard::create($request->all())) {
                return redirect()
                    ->route('web.discard.index')
                    ->with('success', 'Salvo com sucesso');
            }

            return redirect()
                ->route('web.discard.index')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
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
        if (\Gate::allows('edit_discards')) {
            $products = Product::where('active', 1)->get();

            return view('pages.discard.edit', compact('products', 'discard'));
        }

        return view('pages.acl.unauthorized');
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
        if (\Gate::allows('edit_discards')) {
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

        return view('pages.acl.unauthorized');
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
        if (\Gate::allows('delete_productions')) {
            if ($discard->delete()) {
                return redirect()
                    ->route('web.discard.index')
                    ->with('success', 'Deletado com sucesso');
            }

            return redirect()
                ->route('web.discard---.index')
                ->with('error', 'Erro ao deletar');
        }

        return view('pages.acl.unauthorized');
    }
}
