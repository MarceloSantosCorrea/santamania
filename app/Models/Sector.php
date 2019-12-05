<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Sector extends Model
{
    protected $fillable = ['name', 'active'];

    public function products()
    {
        return $this->belongsToMany(Product::class, 'sector_products');
    }

    public function user()
    {
        return $this->belongsToMany(User::class, 'user_sectors');
    }

    public static function createCustom(Array $data)
    {
        try {
            \DB::beginTransaction();
            if ($model = self::query()->create($data)) {

                event(new \App\Events\SectorCreatedEvent($model, $data));
                \DB::commit();

                return $model;
            }

        } catch (\Exception $e) {
            \DB::rollBack();
            \Log::error("L".__LINE__." > ".__METHOD__." message `{$e->getMessage()}` - file `{$e->getFile()}` - line `{$e->getLine()}`");

            return ['error' => $e->getMessage()];
        }
    }

    public static function updateCustom(Sector $model, Array $data)
    {
        try {
            $model->fill($data);
            \DB::beginTransaction();
            if ($model->save()) {

                event(new \App\Events\SectorEditedEvent($model, $data));
                \DB::commit();

                return $model;
            }

        } catch (\Exception $e) {
            \DB::rollBack();
            \Log::error("L".__LINE__." > ".__METHOD__." message `{$e->getMessage()}` - file `{$e->getFile()}` - line `{$e->getLine()}`");

            return ['error' => $e->getMessage()];
        }
    }
}
