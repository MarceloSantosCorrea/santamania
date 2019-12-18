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
        switch ($this->method()) {
            case 'POST':
                return [
                    'name' => 'required|unique:product_categories',
                ];
            case'PUT':
                $param = $this->route('filter');

                $id = is_object($param) ? $param->id : $param;

                $this->merge(['active' => $this->input('active', '0')]);

                return [
                    'name' => 'required|unique:filters,name,'.$id,
                ];
        }
    }
}
