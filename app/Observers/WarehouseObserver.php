<?php

namespace App\Observers;

use App\Models\Warehouse;

class WarehouseObserver
{
    public function creating(Warehouse $warehouse)
    {
        $warehouse->active = 1;
    }

    public function saving(Warehouse $warehouse)
    {
        $warehouse->active = ($warehouse->active === 'on' || $warehouse->active == 1) ? 1 : 0;
    }
}