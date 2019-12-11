<?php

namespace App\Models;

use App\Events\ProductCreatedEvent;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    /**
     * @var array
     */
    protected $dispatchesEvents = [
        'created' => ProductCreatedEvent::class,
    ];
    /**
     * @var array
     */
    protected $fillable = [
        'name', 'current_quantity', 'active', 'product_category_id', 'units_measure_id', 'supplier_id',
    ];

    /**
     * @param  string  $string
     *
     * @return Product|\Illuminate\Database\Eloquent\Builder
     */
    public function search(string $string)
    {
        $qb = $this->with('productCategory');

        if (strtolower($string) == 'ativo') {
            $qb->where('active', 1);
        } elseif (strtolower($string) == 'desativado') {
            $qb->where('active', 0);
        } else {
            $qb->where('id', $string)
               ->orWhere('name', 'like', '%'.$string.'%')
               ->orWhereHas('productCategory', function ($query) use ($string) {
                   $query->where('name', 'like', '%'.$string.'%');
               });
        }

        return $qb;
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function checklistProduct()
    {
        return $this->hasOne(ChecklistProduct::class)->with(['checklist']);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function productDailyChecklist()
    {
        return $this->hasOne(ProductDailyChecklist::class);
    }

    /**
     * @param  Checklist  $checklist
     *
     * @return \Illuminate\Database\Eloquent\Builder[]|\Illuminate\Database\Eloquent\Collection
     */
    public static function productsByChecklist(Checklist $checklist)
    {
        return self::where(['active' => 1])->bySector()->orderBy('name', 'ASC')->with([
            'checklistProduct' => function ($query) use ($checklist) {
                $query->where('checklist_id', $checklist->id);
            },
        ])->get();
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function productCategory()
    {
        return $this->belongsTo(ProductCategory::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function unitsMeasure()
    {
        return $this->belongsTo(UnitsMeasure::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function prevision()
    {
        return $this->belongsTo(Prevision::class, 'id', 'product_id');
    }

    /**
     * @param $value
     *
     * @return mixed
     */
    public function getCreatedAtAttribute($value)
    {
        $c = Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
    }

    /**
     * @param $value
     *
     * @return mixed
     */
    public function getUpdatedAtAttribute($value)
    {
        $c = Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
    }

    public static function listProductsFront()
    {
        $categories = collect();
        $products   = self::query()->bySector()->get();
        if ($products->count()) {

            /** @var Product $product */
            foreach ($products as $product) {
                if (! $categories->contains('id', $product->product_category_id)) {
                    $categories->add(collect([
                        'id'       => $product->productCategory->id,
                        'name'     => $product->productCategory->name,
                        'category' => $product->productCategory,
                        'products' => collect([$product]),
                    ]));
                } else {
                    $categories->map(function ($item, $key) use ($product) {
                        if ($item['id'] == $product->product_category_id) {
                            $item['products']->add($product);
                        }
                    });
                }
            }
        }

        return $categories;
    }

    public function scopeBySector($query)
    {
        $id = [];
        if (\Auth::user()->sectors->count()) {
            foreach (\Auth::user()->sectors as $sector) {
                if ($sector->products->count()) {
                    foreach ($sector->products as $product) {
                        $id[] = $product->id;
                    }
                }
            }
        }

        return $query->whereIn('id', $id);
    }

    public function addCurrentQuantity($value)
    {
        $this->current_quantity += $value;
        $this->save();
    }

    public function removeCurrentQuantity($value)
    {
        $this->current_quantity -= $value;
        $this->save();
    }
}
