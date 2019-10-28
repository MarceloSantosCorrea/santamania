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
        if (\Gate::allows('list_users')) {

            $data = User::paginate(10);

            return view('pages.user.index', compact('data'));
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
        if (\Gate::allows('create_users')) {

            $aclRoles = AclRole::all();

            return view('pages.user.create', compact('aclRoles'));
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
    public function store(UserRequest $request)
    {
        if (\Gate::allows('create_users')) {

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

        return view('pages.acl.unauthorized');
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
        if (\Gate::allows('show_users')) {

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
    public function edit(User $user)
    {
        if (\Gate::allows('edit_users')) {

            $user     = User::with('roles')->find($user->id);
            $aclRoles = AclRole::all();

            return view('pages.user.edit', compact('user', 'aclRoles'));
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
    public function update(UserRequest $request, User $user)
    {
        if (\Gate::allows('edit_users')) {
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

        return view('pages.acl.unauthorized');
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
        if (\Gate::allows('delete_users')) {
            if ($user->delete()) {
                return redirect()
                    ->route('web.user.index')
                    ->with('success', 'Deletado com sucesso');
            }

            return redirect()
                ->route('web.user.index')
                ->with('error', 'Erro ao deletar');
        }

        return view('pages.acl.unauthorized');
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
