<?php

namespace App\Http\Requests;

use App\Rules\UniqProductAndDate;
use Illuminate\Foundation\Http\FormRequest;

class DiscardRequest extends FormRequest
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
                        new UniqProductAndDate('discards', $this->input('product_id', null)),
                    ],
                ];
            case'PUT':
                $discard = $this->route('discard');
                $id      = is_object($discard) ? $discard->id : $discard;

                return [
                    'product_id' => 'required',
                    'quantity'   => 'required',
                    'date'       => [
                        'required',
                        new UniqProductAndDate('discards', $this->input('product_id', null), $id),
                    ],
                ];
        }
    }
}
