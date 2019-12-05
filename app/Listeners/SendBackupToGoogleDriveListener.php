<?php

namespace App\Listeners;

use Spatie\Backup\Events\BackupWasSuccessful;

class SendBackupToGoogleDriveListener
{
    /**
     * @param  BackupWasSuccessful  $event
     *
     * @throws \Illuminate\Contracts\Filesystem\FileNotFoundException
     */
    public function handle(BackupWasSuccessful $event)
    {
        /** @var \Spatie\Backup\BackupDestination\Backup $first */
        $first = $event->backupDestination->backups()->first();

        $filePath = explode('/', $first->path());

        \Storage::disk('google')->put(
            end($filePath),
            \File::get(\Storage::disk($event->backupDestination->diskName())->path($first->path()))
        );
    }
}
