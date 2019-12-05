<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Http\Requests\SectorRequest;
use App\Models\Sector;
use Illuminate\Http\Request;

class SectorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $data = Sector::paginate();

        return view('pages.sector.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        return view('pages.sector.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  SectorRequest  $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(SectorRequest $request)
    {
        if (Sector::create($request->all())) {
            return redirect()->route('web.sector.index')->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.sector.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Sector  $sector
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit(Sector $sector)
    {
        return view('pages.sector.edit', compact('sector'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  SectorRequest  $request
     * @param  Sector  $sector
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(SectorRequest $request, Sector $sector)
    {
        $sector->fill($request->all());

        if ($sector->save()) {
            return redirect()
                ->route('web.sector.index')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.sector.index')
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
