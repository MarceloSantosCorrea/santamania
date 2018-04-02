<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Checklist extends Model
{
    protected $fillable = [
        'date', 'status',
    ];

    public function checklistProduct()
    {
        return $this->hasMany(ChecklistProduct::class);
    }

    public function closeChecklist(Checklist $checklist)
    {
        if ($checklist->status) {

            $checklist = $checklist::with('checklistProduct')->find($checklist->id);

            $diaAnterior = (new \DateTime($checklist->date))->sub(new \DateInterval('P1D'));

            $checklistProductCount = $checklist->checklistProduct()->count();
            $productsCount         = Product::count();

            if ((!count($checklistProductCount)) || ($checklistProductCount < $productsCount))
                return response()->json([
                    'success' => false,
                    'message' => 'Alguns produtos não foram verificados.',
                ]);

            foreach ($checklist->checklistProduct as $checklistProduct) {

                $data = [
                    'checklist_id'         => $checklist->id,
                    'checklist_product_id' => $checklistProduct->id,
                    'total'                => $checklistProduct->total,
                    'difference'           => 0,
                ];

                ChecklistTotal::create($data);
            }

            $checklist->status = 0;
            $checklist->save();

            return response()->json([
                'success' => true,
                'message' => 'Checklist finalizado com sucesso.',
            ]);
        }

        return response()->json([
            'success' => false,
            'message' => 'This checklist already been finalized.',
        ]);
    }

    public function getDateAttribute($value)
    {
        $c = Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
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
}
