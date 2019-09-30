<?php

namespace App\Http\Requests;

use App\Models\ProductCategory;
use Illuminate\Foundation\Http\FormRequest;

class ProductCategoryRequest extends FormRequest
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
                $productCategory = $this->route('product_category');

                $id = is_object($productCategory) ? $productCategory->id : $productCategory;

                $this->merge(['active' => $this->input('active', '0')]);

                return [
                    'name' => 'required|unique:product_categories,name,'.$id,
                ];
        }
    }
}
