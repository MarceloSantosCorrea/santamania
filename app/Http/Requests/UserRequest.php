<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        switch ($this->method()) {
            case 'POST':

                return [
                    'firstname' => 'required|min:3',
                    'lastname'  => 'required|min:3',
                    'password'  => 'required|min:6',
                    "email"     => "required|unique:users,email",
                    'roles'     => 'required',
                ];

            case'PUT':

                if (is_null($this->input('password', null))) {
                    $this->offsetUnset('password');
                }

                $user = $this->route('user');

                $id = is_object($user) ? $user->id : $user;

                $this->merge(['active' => $this->input('active', '0')]);

                return [
                    'firstname' => 'required|min:3',
                    'lastname'  => 'required|min:3',
                    "email"     => "required|unique:users,email,".$id,
                    'roles'     => 'required',
                ];
        }
    }

    public function messages()
    {
        $default = "Campo Obrigatório";

        return [
            'firstname.required' => $default,
            'lastname.required'  => $default,
            'password.required'  => $default,
            'email.required'     => $default,
            'roles.required'     => $default,
        ];
    }
}
