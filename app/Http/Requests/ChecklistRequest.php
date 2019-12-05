<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ChecklistRequest extends FormRequest
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

                $this->merge(['active' => $this->input('active', '0')]);

                return [
                    'date'       => 'required',
                    'time_start' => 'required',
                    'time_end'   => 'required',
                ];

                break;
            case'PUT':
                $checklist = $this->route('checklist');

                $id = is_object($checklist) ? $checklist->id : $checklist;

                $this->merge(['active' => $this->input('active', '0')]);

                return [
                    "date"       => "required",
                    'time_start' => 'required',
                    'time_end'   => 'required',
                ];
                break;

            case'PATCH':

                return [];

                break;
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
            'date.checklistAllProductsChecked' => 'A title is required',
        ];
    }
}
