<?php

namespace App\Http\Requests;

use App\Rules\UniqProductAndDate;
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
        switch ($this->method()) {
            case 'POST':

                return [
                    'product_id' => 'required',
                    'quantity'   => 'required',
                    'date'       => [
                        'required',
                        new UniqProductAndDate('productions', $this->input('product_id', null)),
                    ],
                ];
            case'PUT':
                $production = $this->route('production');
                $id         = is_object($production) ? $production->id : $production;

                return [
                    'product_id' => 'required',
                    'quantity'   => 'required',
                    'date'       => [
                        'required',
                        new UniqProductAndDate('productions', $this->input('product_id', null), $id),
                    ],
                ];
        }
    }
}
