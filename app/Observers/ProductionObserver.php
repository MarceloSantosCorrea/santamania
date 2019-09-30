<?php

namespace App\Observers;

use App\Models\Production;

class ProductionObserver
{
    public function created(Production $production)
    {
        \Log::info(auth()->user()->name." criou produção: ".arrayToString($production->toArray()));
    }

    public function updated(Production $production)
    {
        \Log::info(auth()->user()->name." editou produção: ".arrayToString($production->toArray()));
    }

    public function deleted(Production $production)
    {
        \Log::info(auth()->user()->name." deletou produção: ".arrayToString($production->toArray()));
    }
}
