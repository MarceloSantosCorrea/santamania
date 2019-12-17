<?php

namespace App\Http\Requests;

use App\Rules\ChecklistProductTotalRule;
use Illuminate\Foundation\Http\FormRequest;

class ChecklistProductRequest extends FormRequest
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
                    'checklist_id' => 'required',
                    'product_id'   => 'required',
                    'quantities'   => new ChecklistProductTotalRule($this->input('product_id')),
                ];
            case'PUT':
                return [
                    'checklist_id' => 'required',
                    'product_id'   => 'required',
                    'quantities'   => new ChecklistProductTotalRule($this->input('product_id')),
                ];
        }
    }
}
