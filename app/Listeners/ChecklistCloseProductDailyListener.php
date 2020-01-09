<?php

namespace App\Listeners;

use App\Events\ChecklistClosedEvent;
use App\Models\Checklist;
use App\Models\ChecklistProduct;
use App\Models\ChecklistTotal;
use App\Models\Filter;
use App\Models\ProductFilter;
use App\Services\Feriados;

class ChecklistCloseProductDailyListener
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
        // Verifica se existe produtos contados no checklist
        if ($event->checklist->checklistProduct->count()) {

            /** @var \App\Models\ChecklistProduct $checklistProduct */
            foreach ($event->checklist->checklistProduct as $checklistProduct) {

                /** Verifica se foi setado algum filtro para o checklist */
                if ($event->checklist->checklistFilters->count()) {
                    $filters = $event->checklist->checklistFilters;
                } else {

                    $date         = $event->checklist->date;
                    $numberOfWeek = $date->format('w');

                    $filterId = Filter::$filtersWeekDays[$numberOfWeek];

                    if (in_array($date->format('m-d'), $this->getHolidays())) {
                        $filterId = Filter::$filtersWeekDaysHoliday[$numberOfWeek];
                    }

                    $filters = Filter::query()->where('id', $filterId)->get();
                }

                /** @var \App\Models\Filter $filter */
                foreach ($filters as $filter) {
                    $this->checkProductFilter($filter, $event->checklist, $checklistProduct);
                }
            }
        }
    }

    private function checkProductFilter(\App\Models\Filter $filter, \App\Models\Checklist $checklist, \App\Models\ChecklistProduct $cProduct)
    {

        $checklists        = Checklist::where('date', $checklist->date->format('Y-m-d'))->get();
        $checklistProducts = ChecklistProduct::whereIn('checklist_id', $checklists->modelKeys())
                                             ->where('product_id', $cProduct->product->id)
                                             ->get();

        $checklistTotals = ChecklistTotal::whereIn('checklist_id', $checklists->modelKeys())
                                         ->whereIn('checklist_product_id', $checklistProducts->modelKeys())
                                         ->get();

        if ($checklistTotals->count()) {

            $output = $checklistTotals->sum(function (ChecklistTotal $checklistTotal) {
                return $checklistTotal->output;
            });

            /** @var \App\Models\ProductFilter $row */
            $row = ProductFilter::query()->where([
                'product_id' => $cProduct->product->id,
                'filter_id'  => $filter->id,
            ])->first();

            if ($row) {
                if ($row->value > $cProduct->output) {
                    $row->value = $output;
                    $row->save();
                }
            } else {
                ProductFilter::query()->create([
                    'product_id' => $cProduct->product->id,
                    'filter_id'  => $filter->id,
                    'value'      => $output,
                ]);
            }
        }
    }

    /**
     * @return array
     */
    private function getHolidays()
    {
        return $this->holidays->getArrayFeriados();
    }
}
