<?php

namespace App\Observers;

use App\Models\Supplier;

class SupplierObserver
{
    /**
     * Handle the suplier "created" event.
     *
     * @param  \App\Models\Supplier  $supplier
     *
     * @return void
     */
    public function created(Supplier $supplier)
    {
        //
    }

    /**
     * Handle the suplier "updated" event.
     *
     * @param  \App\Models\Supplier  $supplier
     *
     * @return void
     */
    public function updated(Supplier $supplier)
    {
        //
    }

    /**
     * Handle the suplier "deleted" event.
     *
     * @param  \App\Models\Supplier  $supplier
     *
     * @return void
     */
    public function deleted(Supplier $supplier)
    {
        //
    }

    /**
     * Handle the suplier "restored" event.
     *
     * @param  \App\Models\Supplier  $supplier
     *
     * @return void
     */
    public function restored(Supplier $supplier)
    {
        //
    }

    /**
     * Handle the suplier "force deleted" event.
     *
     * @param  \App\Models\Supplier  $supplier
     *
     * @return void
     */
    public function forceDeleted(Supplier $supplier)
    {
        //
    }
}
