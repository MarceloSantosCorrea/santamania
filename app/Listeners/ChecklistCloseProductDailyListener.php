<?php

namespace App\Listeners;

use App\Events\ChecklistClosedEvent;
use App\Models\ChecklistTotal;
use App\Models\Filter;
use App\Models\ProductFilter;

class ChecklistCloseProductDailyListener
{
    /**
     * Handle the event.
     *
     * @param  ChecklistClosedEvent  $event
     *
     * @return void
     */
    public function handle(ChecklistClosedEvent $event)
    {
        if ($event->checklist->checklistProduct->count()) {
            /** @var \App\Models\ChecklistProduct $checklistProduct */
            foreach ($event->checklist->checklistProduct as $checklistProduct) {

                if ($event->checklist->checklistFilters->count()) {
                    $filters = $event->checklist->checklistFilters;
                } else {

                    $date         = $event->checklist->date;
                    $numberOfWeek = $date->format('w');

                    $filters = Filter::query()->where('id', Filter::$filtersWeekDays[$numberOfWeek])->get();
                }

                /** @var \App\Models\Filter $filter */
                foreach ($filters as $filter) {

                    if ($checklistTotal = ChecklistTotal::query()->where([
                        'checklist_id'         => $event->checklist->id,
                        'checklist_product_id' => $checklistProduct->id,
                    ])->first()) {

                        /** @var \App\Models\ProductFilter $row */
                        if ($row = ProductFilter::query()->where([
                            'product_id' => $checklistProduct->product_id,
                            'filter_id'  => $filter->id,
                        ])->first()) {
                            if ($row->value > $checklistProduct->output) {
                                $row->value = $checklistTotal->output;
                                $row->save();
                            }
                        } else {
                            ProductFilter::query()->create([
                                'product_id' => $checklistProduct->product_id,
                                'filter_id'  => $filter->id,
                                'value'      => $checklistTotal->output,
                            ]);
                        }
                    }
                }
            }
        }
    }
}
