<?php

namespace App\Events;

use App\Models\Sector;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class SectorEditedEvent
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    /**
     * @var Sector
     */
    public $sector;
    /**
     * @var array
     */
    public $data;

    /**
     * SectorCreatedEvent constructor.
     *
     * @param  Sector  $sector
     * @param  array  $data
     */
    public function __construct(Sector $sector, Array $data = [])
    {
        $this->sector = $sector;
        $this->data   = $data;
    }
}
