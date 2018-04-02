<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductionRequest extends FormRequest
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
        return [
            'quantity' => 'required',
        ];

//        switch ($this->method()) {
//            case 'POST':
//                return [
//                    'quantity' => 'required',
//                ];
//            case'PUT':
//                $warehouse = $this->route('warehouse');
//
//                return [
//                    "name" => "required|min:3|unique:warehouses,name," . $warehouse,
//                ];
//        }
    }
}
