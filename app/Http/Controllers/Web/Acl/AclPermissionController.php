<?php

namespace App\Http\Controllers\Web\Acl;

use App\Models\Acl\AclPermission;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AclPermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = AclPermission::paginate();

        return view('pages.acl.permission.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.acl.permission.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (AclPermission::create($request->all())) {
            return redirect()
                ->route('web.acl.permission.index')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.acl.permission.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Display the specified resource.
     *
     * @param  AclPermission  $aclPermission
     *
     * @return \Illuminate\Http\Response
     */
    public function show(AclPermission $aclPermission)
    {
        return view('pages.acl.permission.show', compact('aclPermission'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  AclPermission  $aclPermission
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(AclPermission $aclPermission)
    {
        return view('pages.acl.permission.edit', compact('aclPermission'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, AclPermission $aclPermission)
    {
        $aclPermission->fill($request->all());

        if ($aclPermission->save()) {
            return redirect()
                ->route('web.acl.permission.index')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.acl.permission.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  AclPermission  $aclPermission
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy(AclPermission $aclPermission)
    {
        if ($aclPermission->delete()) {
            return redirect()
                ->route('web.acl.permission.index')
                ->with('success', 'Deletado com sucesso');
        }

        return redirect()
            ->route('web.acl.permission.index')
            ->with('error', 'Erro ao deletar');
    }
}
