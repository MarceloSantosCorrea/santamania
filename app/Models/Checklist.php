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

            $date = (new \DateTime($checklist->date))->format('Y-m-d H:i:s');

            $checklistAbertos = self::where('date', '<', $date)->where('status', 1)->get();
            if ($checklistAbertos->count()) {

                $dates = [];
                foreach ($checklistAbertos as $checklistAberto) {
                    $dates[] = (new \DateTime($checklistAberto->date))->format('d/m/Y');
                }

                return [
                    'success' => false,
                    'message' => 'Os Checklists não foram fechados (' . implode(', ', $dates) . ')',
                ];
            }

            $checklistProductCount = $checklist->checklistProduct()->count();
            $productsCount         = Product::count();

            if ((!count($checklistProductCount)) || ($checklistProductCount < $productsCount))
                return [
                    'success' => false,
                    'message' => 'Alguns produtos não foram verificados.',
                ];

            $difference = 0;

            $checklistAnterior = self::where('date', '<', $date)->where('status', 0)
                ->orderBy('date', 'desc')->with('checklistProduct')->first();


            foreach ($checklist->checklistProduct as $checklistProduct) {

                if ($checklistAnterior) {
                    $checklist_product = $checklistAnterior->toArray()['checklist_product'];
                    $key               = array_search($checklistProduct->product_id, array_column($checklist_product, 'product_id'));
                    $difference        = $checklist_product[$key]['total'] - $checklistProduct->total;
                }

                $data = [
                    'checklist_id'         => $checklist->id,
                    'checklist_product_id' => $checklistProduct->id,
                    'total'                => $checklistProduct->total,
                    'difference'           => $difference,
                ];

                ChecklistTotal::create($data);
            }

            $checklist->status = 0;
            $checklist->save();

            return [
                'success' => true,
                'message' => 'Checklist finalizado com sucesso.',
            ];
        }

        return [
            'success' => false,
            'message' => 'This checklist already been finalized.',
        ];
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
