<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FilterRequest extends FormRequest
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
        $this->merge(["active" => in_array($this->input('active', null), ['on', 1]) ? '1' : '0']);
        switch ($this->method()) {
            case 'POST':
                return [
                    'name' => 'required|unique:filters',
                ];
            case'PUT':
                $param = $this->route('uid');
                $uid   = is_object($param) ? $param->uid : $param;

                return [
                    'name' => "required|unique:filters,name,{$uid},uid",
                ];
        }
    }
}
