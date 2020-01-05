<?php

namespace App\Listeners;

use App\Events\ChecklistClosedEvent;
use App\Models\Filter;
use App\Models\ProductFilter;
use App\Services\Feriados;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class ChecklistClosePrevisionListener
{
    private $holidays;

    public function __construct()
    {
        $this->holidays = new Feriados();
    }

    /**
     * Handle the event.
     *
     * @param  ChecklistClosedEvent  $event
     *
     * @return void
     */
    public function handle(ChecklistClosedEvent $event)
    {
        \Log::info("Produtos contados: `{$event->checklist->checklistProduct->count()}`");
        // Verificar se algum produto foi contado no checklist
        if ($event->checklist->checklistProduct->count()) {

            /** @var \App\Models\ChecklistProduct $checklistProduct */
            foreach ($event->checklist->checklistProduct as $checklistProduct) {

                \Log::info("Produto: #{$checklistProduct->product->id} {$checklistProduct->product->name}");

                // Verificar o produto já foi contado em algum checklist anteriormente para não ficar no loop infinito
                $productFilters = ProductFilter::query()->where('product_id', $checklistProduct->product->id)
                                               ->where('value', '>', 0)->get();

                \Log::info("Produtos Filtros: `{$productFilters->count()}` ids ".json_encode($productFilters->modelKeys()));

                if ($productFilters->count()) {
                    $quantity = $checklistProduct->product->current_quantity;
                    $date     = $event->checklist->date;
                    do {
                        $numberOfWeek = $date->format('w');
                        $filterId     = Filter::$filtersWeekDays[$numberOfWeek];

                        if (in_array($date->format('m-d'), $this->getHolidays())) {
                            $filterId = Filter::$filtersWeekDaysHoliday[$numberOfWeek];
                        }

                        $productFilter = $productFilters->where('filter_id', $filterId)->first();

                        $value    = $productFilter->value ?? 0;
                        $quantity -= $value;

                        \Log::info("Data: `{$date->format('d/m/Y')}`");
                        $date->addDay();
                    } while ($quantity <= 0);
                }
            }
            exit();
        }


        /**
         * Verificar se o dia atual é feriado então
         *
         * Relatórios
         *   relatório de saídas
         *  produção e descarte
         *
         * entrada saide e descarte tudo mesmo
         * 
         */

        //        if (in_array((new \DateTime($checklist->date))->format('m-d'), $diasFeriados)) {
        //            $numberOfWeek = 6; // sábados e feriados
        //        }

        //        $daysOfTheWeek = getKeyDaysOfTheWeek($numberOfWeek);
        /*
                             * Verificar se o total contado do produto é menor que o valor da tabela diária
                             * tendo então que criar uma tarefa.
                             */
        //        $numberOfWeek = date('w', strtotime($checklist->date."+1 days"));

        //        $prevision_date = (new \DateTime($checklist->date))->format('Y-m-d');
        //        do {
        //
        //            $prevision_date = (new \DateTime(date('Y-m-d',
        //                strtotime($prevision_date."+1 days"))))->format('Y-m-d');
        //
        //            $numeroSemana = date('w', strtotime($prevision_date));
        //
        //            if (in_array((new \DateTime($prevision_date))->format('m-d'), $diasFeriados)) {
        //                $numeroSemana = 6; // sábados e feriados
        //            }
        //
        //            $diasDaSemana = getKeyDaysOfTheWeek($numeroSemana);
        //
        //            $valorRestante -= $productDailyChecklistDays[$diasDaSemana];
        //
        //        } while ($valorRestante > 0);
        //
        //        if ($prevision = Prevision::where(["product_id" => $checklistProduct->product->id])->first()) {
        //            $prevision->fill(["prevision_date" => $prevision_date]);
        //            $prevision->save();
        //        } else {
        //            Prevision::create([
        //                "product_id"     => $checklistProduct->product->id,
        //                "prevision_date" => $prevision_date,
        //            ]);
        //        }

    }

    private function getHolidays()
    {
        return $this->holidays->getArrayFeriados();
    }
}
