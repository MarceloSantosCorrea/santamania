<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Production extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['date', 'quantity', 'product_id'];

    /**
     * @param $value
     *
     * @return mixed
     */
    public function getDateAttribute($value)
    {
        $c = \Carbon\Carbon::createFromFormat('Y-m-d', $value);

        return $c->toW3cString();
    }

    /**
     * @param  string  $string
     *
     * @return Production|\Illuminate\Database\Eloquent\Builder
     */
    public function search(string $string)
    {
        $date = \DateTime::createFromFormat('d/m/Y', $string);

        $qb = $this->with('product');

        if ($date) {
            $qb->where('date', $date->format('Y-m-d'));
        } else {
            $qb->where('id', $string)
               ->orWhere('quantity', 'like', '%'.$string.'%')
               ->orWhereHas('product', function ($query) use ($string) {
                   $query->where('name', 'like', '%'.$string.'%');
               });
        }

        return $qb;
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    /**
     * @param $value
     *
     * @return mixed
     */
    public function getCreatedAtAttribute($value)
    {
        $c = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
    }

    /**
     * @param $value
     *
     * @return mixed
     */
    public function getUpdatedAtAttribute($value)
    {
        $c = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
    }

    /**
     * @param  array  $data
     *
     * @return Production|array|\Illuminate\Database\Eloquent\Builder|Model
     * @throws \Exception
     */
    public static function createCustom(Array $data)
    {
        try {
            \DB::beginTransaction();
            if ($model = self::query()->create($data)) {
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
     * @param  Production  $model
     * @param  array  $data
     *
     * @return Production|array
     * @throws \Exception
     */
    public static function updateCustom(Production $model, Array $data)
    {
        try {
            $model->fill($data);
            \DB::beginTransaction();
            if ($model->save()) {
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
