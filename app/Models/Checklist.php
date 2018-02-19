<?php

namespace App\Models;

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
                    'message' => 'Some products have not been counted.',
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

            return response()->json([
                'success' => true,
                'message' => 'Checklist finalized successfully.',
            ]);
        }

        return response()->json([
            'success' => false,
            'message' => 'This checklist already been finalized.',
        ]);
    }
}
