<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SectorProduct extends Model
{
    protected $fillable = ['product_id', 'sector_id'];

    public static function createByArray(Sector $sector, Array $products)
    {
        foreach ($products as $id) {
            self::query()->create([
                'sector_id'  => $sector->id,
                'product_id' => $id,
            ]);
        }
    }

    public static function updateByArray(Sector $sector, Array $products)
    {
        $ids = [];
        foreach ($products as $id) {

            $data = [
                'sector_id'  => $sector->id,
                'product_id' => $id,
            ];

            if ($row = self::query()->where($data)->first()) {
                $ids[] = $row->id;
            } else {
                $row = self::query()->create($data);

                $ids[] = $row->id;
            }
        }

        $deletes = self::query()->whereNotIn('id', $ids)->where(['sector_id' => $sector->id])->get();
        if ($deletes->count()) {
            foreach ($deletes as $delete) {
                $delete->delete();
            }
        }
    }
}
