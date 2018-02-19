<?php

namespace App\Observers;

use App\Models\Warehouse;

class WarehouseObserver
{
    public function creating(Warehouse $warehouse)
    {
        $warehouse->active = 1;
    }

    public function updating(Warehouse $warehouse)
    {
        $warehouse->active = $warehouse->active == 'on' ? 1 : 0;
    }
}