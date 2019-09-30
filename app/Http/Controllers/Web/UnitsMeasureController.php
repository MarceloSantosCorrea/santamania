<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\UnitsMeasureRequest;
use App\Models\UnitsMeasure;

class UnitsMeasureController extends AbstractController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (\Gate::allows('list_units_measures')) {
            $data = UnitsMeasure::paginate();

            return view('pages.units-measure.index', compact('data'));
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
        if (\Gate::allows('create_units_measures')) {
            return view('pages.units-measure.create');
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
    public function store(UnitsMeasureRequest $request)
    {
        if (\Gate::allows('create_units_measures')) {
            if (UnitsMeasure::create($request->all())) {
                return redirect()
                    ->route('web.units-measure.index')
                    ->with('success', 'Salvo com sucesso');
            }

            return redirect()
                ->route('web.units-measure.index')
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
    public function edit(UnitsMeasure $unitsMeasure)
    {
        if (\Gate::allows('edit_units_measures')) {
            return view('pages.units-measure.edit', compact('unitsMeasure'));
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
    public function update(UnitsMeasureRequest $request, UnitsMeasure $unitsMeasure)
    {
        if (\Gate::allows('edit_units_measures')) {
            $unitsMeasure->fill($request->all());

            if ($unitsMeasure->save()) {
                return redirect()
                    ->route('web.units-measure.index')
                    ->with('success', 'Salvo com sucesso');
            }

            return redirect()
                ->route('web.units-measure.index')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  UnitsMeasure  $unitsMeasure
     *
     * @return UnitsMeasure
     * @throws \Exception
     */
    public function destroy(UnitsMeasure $unitsMeasure)
    {
        if (\Gate::allows('delete_units_measures')) {
            if ($unitsMeasure->delete()) {
                return redirect()
                    ->route('web.units-measure.index')
                    ->with('success', 'Deletado com sucesso');
            }

            return redirect()
                ->route('web.units-measure.index')
                ->with('error', 'Erro ao deletar');
        }

        return view('pages.acl.unauthorized');
    }
}
