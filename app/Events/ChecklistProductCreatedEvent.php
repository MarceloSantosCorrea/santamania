<?php

namespace App\Events;

use App\Models\ChecklistProduct;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class ChecklistProductCreatedEvent
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    /**
     * @var ChecklistProduct
     */
    public $checklistProduct;
    /**
     * @var array
     */
    public $data;

    /**
     * Create a new event instance.
     *
     * @param  ChecklistProduct  $checklistProduct
     * @param  array  $data
     */
    public function __construct(ChecklistProduct $checklistProduct, Array $data = [])
    {
        $this->checklistProduct = $checklistProduct;
        $this->data             = $data;
    }
}
