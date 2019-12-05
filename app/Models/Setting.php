<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    /**
     * primaryKey
     *
     * @var integer
     * @access protected
     */
    protected $primaryKey = null;

    /**
     * Indicates if the IDs are auto-incrementing.
     *
     * @var bool
     */
    public $incrementing = false;
    public $timestamps   = false;

    protected $fillable = [
        "option_name", "option_value",
    ];

    /**
     * @param  array  $data
     *
     * @throws \Throwable
     */
    public static function createCustom(Array $data)
    {
        \DB::transaction(function () use ($data) {
            try {
                if ($model = self::create($data)) {
                    return $model;
                }

            } catch (\Exception $e) {
                \Logs::channel("exceptions")->info("L".__LINE__." > ".__METHOD__." message `{$e->getMessage()}` - file `{$e->getFile()}` - line `{$e->getLine()}`");
                throw $e;
            }
        });
    }

    /**
     * @param  array  $data
     * @param  Setting  $model
     *
     * @throws \Throwable
     */
    public static function updateCustom(Array $data, Setting $model)
    {
        \DB::transaction(function () use ($data, $model) {
            try {
                if (Setting::where("option_name", $data["option_name"])->update($data)) {
                    return $model;
                }

            } catch (\Exception $e) {
                \Logs::channel("exceptions")->info("L".__LINE__." > ".__METHOD__." message `{$e->getMessage()}` - file `{$e->getFile()}` - line `{$e->getLine()}`");
                throw $e;
            }
        });
    }

    /**
     * @param  array  $data
     *
     * @return bool
     * @throws \Throwable
     */
    public static function saveCustom(Array $data)
    {
        if (isset($data["settings"]) && count($data["settings"])) {

            foreach ($data["settings"] as $setting => $value) {

                if (is_array($value)) {
                    $value = json_encode($value);
                }

                /** @var \App\Models\Setting $model */
                if ($model = self::where(["option_name" => $setting])->first()) {
                    self::updateCustom(["option_name" => $setting, "option_value" => $value], $model);
                } else {
                    self::createCustom(["option_name" => $setting, "option_value" => $value]);
                }
            }
        }

        return true;
    }
}
