<?php

namespace App\Events;

use App\Models\ChecklistProduct;
use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class ChecklistProductEvent
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    /**
     * @var ChecklistProduct
     */
    public $checklistProduct;

    /**
     * Create a new event instance.
     *
     * @param ChecklistProduct $checklistProduct
     */
    public function __construct(ChecklistProduct $checklistProduct)
    {
        echo "<pre>";
        print_r('ok');
        echo "</pre>";
        exit();
        $this->checklistProduct = $checklistProduct;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new PrivateChannel('channel-name');
    }
}
