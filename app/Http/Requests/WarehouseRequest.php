<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class WarehouseRequest extends FormRequest
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
                    'name' => 'required|min:3',
                ];
            case'PUT':
                $warehouse = $this->route('warehouse');

                $id = is_object($warehouse) ? $warehouse->id : $warehouse;

                $this->merge(['active' => $this->input('active', '0')]);

                return [
                    "name" => "required|min:3|unique:warehouses,name," . $id,
                ];
        }
    }
}
