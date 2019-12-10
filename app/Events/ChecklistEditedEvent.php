<?php

namespace App\Events;

use App\Models\Checklist;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class ChecklistEditedEvent
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    /**
     * @var Checklist
     */
    public $checklist;
    /**
     * @var array
     */
    public $data;

    /**
     * ChecklistEditedEvent constructor.
     *
     * @param  Checklist  $checklist
     * @param  array  $data
     */
    public function __construct(Checklist $checklist, Array $data = [])
    {
        $this->checklist = $checklist;
        $this->data      = $data;
    }
}
