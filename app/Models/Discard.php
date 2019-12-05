<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Discard extends Model
{
    protected $fillable = ['date', 'quantity', 'product_id'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    /**
     * @param  string  $string
     *
     * @return Discard|\Illuminate\Database\Eloquent\Builder
     */
    public static function search(string $string)
    {
        $date = \DateTime::createFromFormat('d/m/Y', $string);

        $qb = self::with('product');

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
}
