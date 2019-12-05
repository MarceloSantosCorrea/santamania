<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    use ControllerTrait;
    protected $model;

    public function __construct(User $model)
    {
        $this->model = $model;
    }

    public function show(User $user)
    {
        return $user;
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(UserRequest $request)
    {
        return User::create($request->all());
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UserRequest $request, $id)
    {
        $user = User::find($id);
        $user->update($request->all());

        return $user;
    }

    public function destroy(User $user)
    {
        $user->delete();

        return $user;
    }
}
