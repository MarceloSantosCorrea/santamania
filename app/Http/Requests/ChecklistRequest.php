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
                return [
                    'date' => 'required|unique:checklists',
                ];
            case'PUT':
                $checklist = $this->route('checklist');

                $id = is_object($checklist) ? $checklist->id : $checklist;

                return [
                    "date" => "required|unique:checklists,date," . $id,
                ];
        }
    }
}
