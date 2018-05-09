<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TaskRequest extends FormRequest
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
                ];
            case'PUT':
                $task = $this->route('task');

                $id = is_object($task) ? $task->id : $task;

                return [
                    'product_id' => 'required',
                ];
        }
    }
}
