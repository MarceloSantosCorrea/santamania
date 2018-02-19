<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\UnitsMeasureRequest;
use App\Models\UnitsMeasure;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UnitsMeasureController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = UnitsMeasure::paginate();

        return view('pages.units-measure.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.units-measure.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(UnitsMeasureRequest $request)
    {
        if (UnitsMeasure::create($request->all()))
            return redirect()
                ->route('web.units-measure.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.units-measure.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit(UnitsMeasure $unitsMeasure)
    {
        return view('pages.units-measure.edit', compact('unitsMeasure'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(UnitsMeasureRequest $request, UnitsMeasure $unitsMeasure)
    {
        $unitsMeasure->fill($request->all());

        if ($unitsMeasure->save())
            return redirect()
                ->route('web.units-measure.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.units-measure.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param UnitsMeasure $unitsMeasure
     * @return UnitsMeasure
     * @throws \Exception
     */
    public function destroy(UnitsMeasure $unitsMeasure)
    {
        if ($unitsMeasure->delete())
            return redirect()
                ->route('web.units-measure.index')
                ->with('success', 'Deletado com sucesso');

        return redirect()
            ->route('web.units-measure.index')
            ->with('error', 'Erro ao deletar');
    }
}
