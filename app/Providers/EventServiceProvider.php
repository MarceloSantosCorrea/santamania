<?php

namespace App\Providers;

use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],

        \Illuminate\Auth\Events\Login::class             => [
            \App\Listeners\LogSuccessfulLogin::class,
        ],
        \Illuminate\Auth\Events\Logout::class            => [
            \App\Listeners\LogSuccessfulLogout::class,
        ],
        \Illuminate\Auth\Events\PasswordReset::class     => [
            \App\Listeners\LogPasswordReset::class,
        ],
        /**
         * Backups
         */
        \Spatie\Backup\Events\BackupWasSuccessful::class => [
            \App\Listeners\SendBackupToGoogleDriveListener::class,
        ],
        /**
         * Checklists
         */
        \App\Events\ChecklistCreatedEvent::class         => [
            \App\Listeners\ChecklistCreatedChecklistFilterListener::class,
            \App\Listeners\ChecklistCreatedChecklistSectorListener::class,
        ],
        \App\Events\ChecklistEditedEvent::class          => [
            \App\Listeners\ChecklistEditedChecklistFilterListener::class,
            \App\Listeners\ChecklistEditedChecklistSectorListener::class,
        ],
        \App\Events\ChecklistClosedEvent::class          => [
            \App\Listeners\ChecklistCloseTotalListener::class,
            \App\Listeners\ChecklistCloseProductDailyListener::class,
            \App\Listeners\ChecklistCloseTasksListener::class,
            \App\Listeners\ChecklistClosePrevisionListener::class,
        ],
        \App\Events\ChecklistOpenedEvent::class          => [
            \App\Listeners\ChecklistOpenTotalListener::class,
        ],
        /**
         * Checklist Product
         */
        \App\Events\ChecklistProductCreatedEvent::class  => [
            \App\Listeners\ChecklistProductCreateChecklistWarehouseQuantityListener::class,
        ],
        \App\Events\ChecklistProductEditedEvent::class   => [
            \App\Listeners\ChecklistProductEditeChecklistWarehouseQuantityListener::class,
        ],
        /**
         * Sectors
         */
        \App\Events\SectorCreatedEvent::class            => [
            \App\Listeners\SectorCreatedSectorProductListener::class,
            \App\Listeners\SectorCreatedUserSectorListener::class,
        ],
        \App\Events\SectorEditedEvent::class             => [
            \App\Listeners\SectorEditedSectorProductListener::class,
            \App\Listeners\SectorEditedUserSectorListener::class,
        ],
        /**
         * Products
         */
        \App\Events\ProductCreatedEvent::class           => [
            \App\Listeners\ProductDailyChecklistListener::class,
            \App\Listeners\ProductCreateProductWarehousesListener::class,
        ],
        \App\Events\ProductEditedEvent::class            => [
            \App\Listeners\ProductEditeProductWarehousesListener::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();
    }
}
