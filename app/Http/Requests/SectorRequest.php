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
        $this->merge([
            'active' => in_array($this->input('active', null), [1, 'on']) ? 1 : 0,
        ]);

        switch ($this->method()) {
            case 'POST':
                return [
                    'name' => 'required|unique:sectors',
                ];
            case'PUT':
                $sector = $this->route('sector');

                $id = is_object($sector) ? $sector->id : $sector;

                return [
                    'name' => 'required|unique:sectors,name,'.$id,
                ];
        }
    }
}
