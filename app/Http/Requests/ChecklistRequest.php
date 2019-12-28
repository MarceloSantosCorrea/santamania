<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ChecklistRequest extends FormRequest
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
                    'date'    => 'required',
                    'filters' => 'required',
                    'sectors' => 'required',
                ];
                break;
            case'PUT':
                return [
                    "date"    => "required",
                    "filters" => "required",
                    'sectors' => 'required',
                ];
                break;
            case'PATCH':
                return [];
                break;
        }
    }

    /**
     * Get the error messages for the defined validation rules.
     *
     * @return array
     */
    public function messages()
    {
        return [
            'sectors.required' => 'Campo obrigatório',
        ];
    }
}
