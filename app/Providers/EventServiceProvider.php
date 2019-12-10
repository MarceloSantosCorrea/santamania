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
        Registered::class                                => [
            SendEmailVerificationNotification::class,
        ],
        \App\Events\ProductCreatedEvent::class           => [
            \App\Listeners\ProductDailyChecklistListener::class,
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
        \App\Events\ChecklistCreatedEvent::class         => [
            \App\Listeners\ChecklistCreatedChecklistSectorListener::class,
        ],
        \App\Events\ChecklistEditedEvent::class          => [
            \App\Listeners\ChecklistEditedChecklistSectorListener::class,
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
