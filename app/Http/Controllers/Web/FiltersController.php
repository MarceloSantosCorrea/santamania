<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\FilterRequest;
use App\Models\Filter;
use Illuminate\Http\Request;

class FiltersController extends AbstractController
{
    /**
     * Mostrar a Lista de Filtros.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $data = Filter::paginate();

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
        dd($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
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
