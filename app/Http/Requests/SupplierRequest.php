<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SupplierRequest extends FormRequest
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
                    'name'  => 'required|min:3|unique:suppliers',
                    'color' => 'required',
                ];

            case'PUT':
                $supplier = $this->route('supplier');
                $id       = is_object($supplier) ? $supplier->id : $supplier;

                return [
                    "name"  => "required|unique:suppliers,name,".$id,
                    'color' => 'required',
                ];
        }
    }
}
