<?php

namespace App\Http\Controllers\Web\Acl;

use App\Models\Acl\AclPermission;
use App\Models\Acl\AclPermissionAclRole;
use App\Models\Acl\AclRole;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AclPermissionRoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function show(AclRole $aclRole)
    {
        $permissionsRole = AclPermissionAclRole::where(['acl_role_id' => $aclRole->id])->get();
        $permissions = AclPermission::all();

        return view('pages.acl.permission-role.index', compact('aclRole', 'permissions', 'permissionsRole'));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, AclRole $aclRole)
    {
        if (AclPermissionAclRole::savePermissions($request->all()['permissions'], $aclRole))
            return redirect()
            ->route('web.acl.role.index')
            ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.acl.role.index')
            ->with('error', 'Erro ao salvar');
    }
}
