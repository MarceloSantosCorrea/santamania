<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Checklist extends Model
{
    protected $fillable = [
        'date', 'status',
    ];

    public function checklistProduct()
    {
        return $this->hasMany(ChecklistProduct::class)->with(['product']);
    }

    public function checklistTotals()
    {
        return $this->hasMany(ChecklistTotal::class);
    }

    public function closeChecklist(Checklist $checklist)
    {
        if ($checklist->status) {

            DB::transaction(function () use ($checklist) {

                $checklist = $checklist::with('checklistProduct')->find($checklist->id);

                $date = (new \DateTime($checklist->date))->format('Y-m-d H:i:s');

                /*
                 * Verificando se há checklist de datas anteriores com status 1 aberto
                 */
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

                /*
                 * Verificando se todos os produtos foram contados
                 */
                $checklistProductCount = $checklist->checklistProduct()->count();
                $productsCount         = Product::count();

                if ((!count($checklistProductCount)) || ($checklistProductCount < $productsCount))
                    return [
                        'success' => false,
                        'message' => 'Alguns produtos não foram verificados.',
                    ];

                /*
                 * Retornando o último checklist fechado
                 */
                $checklistAnterior = self::where('date', '<', $date)->where('status', 0)
                    ->orderBy('date', 'desc')->with(['checklistProduct'])->first();

                $difference = 0;
                foreach ($checklist->checklistProduct as $checklistProduct) {

                    $production = Production::where([
                        'date' => $date, 'product_id' => $checklistProduct->product_id,
                    ])->first();

                    if ($checklistAnterior) {

                        $checklistTotalAnterior = ChecklistProduct::where([
                            'checklist_id' => $checklistAnterior->id,
                            'product_id'   => $checklistProduct->product_id,
                        ])->first();

                        $totalAnterior = $checklistTotalAnterior->total;

                        if ($production) {
                            $totalAnterior = $checklistTotalAnterior->total + $production->quantity;
                        }

                        $difference = $totalAnterior - $checklistProduct->total;
                    }

                    $productDailyChecklist     = ProductDailyChecklist::where(['product_id' => $checklistProduct->product_id])->first();
                    $productDailyChecklistDays = json_decode($productDailyChecklist->days);


                    if ($difference > $productDailyChecklistDays[getKeyDaysOfTheWeek(date('w', strtotime($checklist->date)))]) {
                        $productDailyChecklistDays[getKeyDaysOfTheWeek(date('w', strtotime($checklist->date)))] = $difference;

                        $productDailyChecklist->fill([
                            'days' => json_encode($productDailyChecklistDays),
                        ]);

                        $productDailyChecklist->save();
                    }

                    /*
                     * Verificar se o total contado do produto é menor que o valor da tabela diária
                     * tendo então que criar uma tarefa.
                     */
                    if ($checklistProduct->total < $productDailyChecklistDays[getKeyDaysOfTheWeek(date('w', strtotime($checklist->date)))]) {

                        Task::create([
                            'product_id' => $checklistProduct->product_id,
                        ]);
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

            });

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
