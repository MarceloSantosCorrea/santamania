<?php

namespace App\Events;

use App\Models\Checklist;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class ChecklistOpenedEvent
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    /**
     * @var Checklist
     */
    public $checklist;

    /**
     * ChecklistOpenedEvent constructor.
     *
     * @param  Checklist  $checklist
     */
    public function __construct(Checklist $checklist)
    {
        $this->checklist = $checklist;
    }
}
