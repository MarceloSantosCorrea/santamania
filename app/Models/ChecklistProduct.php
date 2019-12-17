<?php

namespace App\Models;

use App\Events\ChecklistProductCreatedEvent;
use App\Events\ChecklistProductEditedEvent;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class ChecklistProduct extends Model
{
    protected $fillable = [
        "checklist_id", "product_id", "total",
    ];

    public function checklist()
    {
        return $this->belongsTo(Checklist::class);
    }

    /**
     * @return Product
     */
    public function product()
    {
        return $this->belongsTo(Product::class)->with(["unitsMeasure", "prevision"]);
    }

    public function quantities()
    {
        return $this->hasMany(ChecklistWarehouseQuantity::class);
    }

    public function checklist_tatals()
    {
        return $this->hasOne(ChecklistTotal::class);
    }

    public function getCreatedAtAttribute($value)
    {
        $c = Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
    }

    public function getUpdatedAtAttribute($value)
    {
        $c = Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
    }

    /**
     * @param  array  $data
     *
     * @return ChecklistProduct|bool|Model
     * @throws \Exception
     */
    public static function createCustom(Array $data)
    {
        if (isset($data['quantities'])) {
            $quantities = arrayFilter($data['quantities']);
            if (count($quantities)) {
                $total = 0;
                foreach ($quantities as $warehouse => $quantity) {
                    $total += $quantity;
                }

                try {

                    \DB::beginTransaction();

                    $create = [
                        'checklist_id' => $data['checklist_id'],
                        'product_id'   => $data['product_id'],
                        'total'        => $total,
                    ];
                    if ($model = self::create($create)) {
                        event(new ChecklistProductCreatedEvent($model, $data));
                        \DB::commit();

                        return $model;
                    }
                } catch (\Exception $e) {
                    \DB::rollBack();
                    \Log::error("L".__LINE__." > ".__METHOD__." message `{$e->getMessage()}` - file `{$e->getFile()}` - line `{$e->getLine()}`");
                    throw $e;
                }
            }
        }

        return true;
    }

    /**
     * @param  ChecklistProduct  $model
     * @param  array  $data
     *
     * @return ChecklistProduct|bool
     * @throws \Exception
     */
    public static function updateCustom(ChecklistProduct $model, Array $data)
    {
        if (isset($data['quantities'])) {
            $quantities = $data['quantities'];
            $total      = 0;
            foreach ($quantities as $warehouse => $quantity) {
                $total += $quantity ?? 0;
            }

            try {

                \DB::beginTransaction();

                $update = [
                    'checklist_id' => $data['checklist_id'],
                    'product_id'   => $data['product_id'],
                    'total'        => $total,
                ];
                if ($model->update($update)) {
                    event(new ChecklistProductEditedEvent($model, $data));
                    \DB::commit();

                    return $model;
                }
            } catch (\Exception $e) {
                \DB::rollBack();
                \Log::error("L".__LINE__." > ".__METHOD__." message `{$e->getMessage()}` - file `{$e->getFile()}` - line `{$e->getLine()}`");
                throw $e;
            }
        }

        return true;
    }
}
