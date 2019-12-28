<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Sector extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['name', 'active'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function products()
    {
        return $this->belongsToMany(Product::class, 'sector_products');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function users()
    {
        return $this->belongsToMany(User::class, 'user_sectors');
    }

    public function getProductsSectorForm(int $id = null)
    {
        $query = $this->query();

        if ($id) {
            $query->whereNotIn('id', [$id]);
        }

        $sectors = $query->get();

        $ids = [];
        if ($sectors->count()) {
            /** @var Sector $sector */
            foreach ($sectors as $sector) {
                if ($sector->products->count()) {
                    foreach ($sector->products as $product) {
                        $ids[] = $product->id;
                    }
                }
            }
        }

        return Product::where(['active' => 1])->whereNotIn('id', $ids)->get();
    }

    /**
     * @param  array  $data
     *
     * @return Sector|array|\Illuminate\Database\Eloquent\Builder|Model
     * @throws \Exception
     */
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

    /**
     * @param  Sector  $model
     * @param  array  $data
     *
     * @return Sector|array
     * @throws \Exception
     */
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

    public static function boot()
    {
        parent::boot();

        static::creating(function ($item) {
            $uid = uniqid();
            while (self::query()->where('uid', '=', $uid)->count() > 0) {
                $uid = uniqid();
            }
            $item->uid = $uid;
        });
    }
}
