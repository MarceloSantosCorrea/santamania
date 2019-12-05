<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\ProfileRequest;
use App\Http\Requests\UserRequest;
use App\Models\Acl\AclRole;
use App\Models\Acl\AclRoleUser;
use App\Models\User;

class UserController extends AbstractController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = User::paginate(10);

        return view('pages.user.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $aclRoles = AclRole::all();

        return view('pages.user.create', compact('aclRoles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        if ($user = User::create($request->all())) {

            foreach ($request->all()['roles'] as $role) {
                AclRoleUser::create([
                    'user_id'     => $user->id,
                    'acl_role_id' => $role,
                ]);
            }

            return redirect()
                ->route('web.user.index')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.user.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        $user     = User::with('roles')->find($user->id);
        $aclRoles = AclRole::all();

        return view('pages.user.edit', compact('user', 'aclRoles'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(UserRequest $request, User $user)
    {
        $user->fill($request->all());

        if ($user->save()) {


            if (isset($request->all()['roles'])) {

                AclRoleUser::where(['user_id' => $user->id])->delete();

                foreach ($request->all()['roles'] as $role) {
                    AclRoleUser::create([
                        'user_id'     => $user->id,
                        'acl_role_id' => $role,
                    ]);
                }
            }

            return redirect()
                ->route('web.user.index')
                ->with('success', 'Salvo com sucesso');
        }


        return redirect()
            ->route('web.user.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  User  $user
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(User $user)
    {
        if ($user->delete()) {
            return redirect()
                ->route('web.user.index')
                ->with('success', 'Deletado com sucesso');
        }

        return redirect()
            ->route('web.user.index')
            ->with('error', 'Erro ao deletar');
    }

    public function profile()
    {
        $user = auth()->user();

        return view('pages.user.profile', compact('user'));
    }

    public function updateProfile(ProfileRequest $request)
    {
        $user = User::find(auth()->user()->id);

        $data = $request->all();
        if (isset($data['password'])) {
            $data['password'] = bcrypt($data['password']);
        }

        $user->fill($request->all());

        if ($user->save()) {

            return redirect()
                ->route('web.user.profile')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.user.profile')
            ->with('error', 'Erro ao salvar');

    }
}
