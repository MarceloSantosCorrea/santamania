<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SectorRequest extends FormRequest
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
                    'name' => 'required|unique:sectors',
                ];
            case'PUT':
                $sector = $this->route('sector');

                $id = is_object($sector) ? $sector->id : $sector;

                if (! is_null($this->input('active', null))) {
                    $this->merge([
                        'active' => in_array($this->input('active', null), [1, 'on']) ? 1 : 0,
                    ]);
                }

                return [
                    'name' => 'required|unique:sectors,name,'.$id,
                ];
        }
    }
}
