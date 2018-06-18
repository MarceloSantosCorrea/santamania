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

    /**
     * Fechar Checklist
     *
     * @param Checklist $checklist
     * @return array|mixed
     * @throws \Throwable
     */
    public function closeChecklist(Checklist $checklist)
    {
        /*
         * Se checklist estiver status 1 = aberto
         */
        if ($checklist->status) {

            return DB::transaction(function () use ($checklist) {

                /*
                 * Retornar as contagens dos produtos
                 */
                $checklist = $checklist::with('checklistProduct')->find($checklist->id);

                /*
                 * Formatando a data para o formato timestamps
                 */
                $date = (new \DateTime($checklist->date))->format('Y-m-d');

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
                $productsCount         = Product::where(['active' => 1])->count();

                if ((!count($checklistProductCount)) || ($checklistProductCount < $productsCount)) {
                    return [
                        'success' => false,
                        'message' => ($checklistProductCount < $productsCount) . ' produto(s) não foi(ram) verificado(s).',
                    ];
                }

                /*
                 * Retornando o último checklist fechado
                 */
                $checklistAnterior = self::where('date', '<', $date)->where('status', 0)
                    ->orderBy('date', 'desc')->with(['checklistProduct'])->first();

                $difference = 0;

                foreach ($checklist->checklistProduct as $checklistProduct) {

                    /*
                     * retornar a produção
                     */
                    $production = Production::where([
                        'date' => $date, 'product_id' => $checklistProduct->product_id,
                    ])->first();

                    $totalAnterior = 0;

                    if ($checklistAnterior) {

                        $checklistTotalAnterior = ChecklistProduct::with(['checklist_tatals'])->where([
                            'checklist_id' => $checklistAnterior->id,
                            'product_id'   => $checklistProduct->product_id,
                        ])->first();

                        if ($checklistTotalAnterior)
                            $totalAnterior = $checklistTotalAnterior->checklist_tatals->total;

                        if ($production) {
                            $totalAnterior = $totalAnterior + $production->quantity;
                        }

                        if ($totalAnterior > 0)
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
                    if ($checklistProduct->total < $productDailyChecklistDays[getKeyDaysOfTheWeek(date('w', strtotime($checklist->date . "+1 days")))]) {
                        $task = Task::where(['product_id' => $checklistProduct->product_id, 'status' => 1])->first();
                        if (!$task)
                            Task::create(['product_id' => $checklistProduct->product_id]);
                    }

                    $data = [
                        'checklist_id'         => $checklist->id,
                        'checklist_product_id' => $checklistProduct->id,
                        'total'                => $checklistProduct->total,
                        'difference'           => $difference,
                    ];

                    if ($difference < 0) {

                        return [
                            'success' => false,
                            'message' => "Opss, erro ao finalizar o produto {$checklistProduct->product->name}.",
                        ];
                    }

                    ChecklistTotal::updateOrCreate($data);

                }

                $checklist->status = 0;
                $checklist->save();

                return [
                    'success' => true,
                    'message' => 'Checklist finalizado com sucesso.',
                ];

            });
        }

        return [
            'success' => false,
            'message' => 'This checklist already been finalized.',
        ];
    }

    public function getDateAttribute($value)
    {
        $c = Carbon::createFromFormat('Y-m-d', $value);

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
