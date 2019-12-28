<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\FilterRequest;
use App\Models\Filter;

class FiltersController extends AbstractController
{
    /**
     * Mostrar a Lista de Filtros.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $data = Filter::where('default', 0)
                      ->where('id', '>', 14)->paginate();

        return view('pages.filters.index', compact('data'));
    }

    /**
     * Mostar um formulário para a criação de um novo filtro.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        return view('pages.filters.create');
    }

    /**
     * Salvar um novo filtro no banco de dados.
     *
     * @param  FilterRequest  $request
     */
    public function store(FilterRequest $request)
    {
        try {
            if (Filter::create($request->all())) {
                return redirect()->route('web.filters.index')->with('success', 'Salvo com sucesso');
            }
        } catch (\Exception $e) {
            return redirect()->route('web.filters.index')->with('error', 'Erro ao salvar');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Filter  $filter
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit($uid)
    {
        try {
            $filter = Filter::where(["uid" => $uid])->firstOrFail();
        } catch (\Exception $e) {
            abort(404);
        }

        return view('pages.filters.edit', compact('filter'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  FilterRequest  $request
     * @param $uid
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(FilterRequest $request, $uid)
    {
        try {
            $filter = Filter::where(["uid" => $uid])->firstOrFail();
        } catch (\Exception $e) {
            abort(404);
        }

        $filter->fill($request->all());

        if ($filter->save()) {
            return redirect()
                ->route('web.filters.index')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.filtersindex')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
