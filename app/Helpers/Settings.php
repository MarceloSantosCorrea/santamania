<?php

namespace App\Helpers;

use App\Models\Setting;

class Settings
{
    public static function all()
    {
        return Setting::all()->toArray();
    }

    public static function get($option_name, $default = null, Bool $isArray = false)
    {
        $settings = Setting::all()->toArray();
        foreach ($settings as $setting) {
            if ($setting["option_name"] == $option_name) {
                if ($isArray) {
                    return collect(json_decode($setting["option_value"]));
                }

                return $setting["option_value"];
            }
        }
        if ($isArray) {
            return collect([]);
        }

        return $default;
    }
}
