<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
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
                    "name"                => "required|unique:products",
                    "product_category_id" => "required",
                    "units_measure_id"    => "required",
                ];
            case'PUT':
                $product = $this->route('product');

                $id = is_object($product) ? $product->id : $product;

                $this->merge(['active' => $this->input('active', '0')]);

                return [
                    "name" => "required|unique:products,name,".$id,
                ];
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
            'product_category_id.required' => 'O campo Categoria é obrigatório.',
            'units_measure_id.required'    => 'O campo Unidade de Medida é obrigatório.',
        ];
    }
}
