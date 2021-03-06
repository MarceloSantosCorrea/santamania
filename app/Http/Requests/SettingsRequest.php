<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SettingsRequest extends FormRequest
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
        $settings                            = $this->input();
        $settings["settings"]["debug"] = $this->input('settings.debug',
            null) == 'on' || $this->input('settings.debug', null) == '1' ? 'true' : 'false';
        $this->merge(['settings' => $settings["settings"]]);

        return [
        ];
    }
}
