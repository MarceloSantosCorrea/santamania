<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ChecklistWarehouseQuantityRequest;
use App\Models\ChecklistWarehouseQuantity;

class ChecklistWarehouseQuantityController extends Controller
{
    use ControllerTrait;
    protected $model;

    public function __construct(ChecklistWarehouseQuantity $model)
    {
        $this->model = $model;
    }

    public function show(ChecklistWarehouseQuantity $checklistWarehouseQuantity)
    {
        return $checklistWarehouseQuantity;
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ChecklistWarehouseQuantityRequest $request)
    {
        return ChecklistWarehouseQuantity::create($request->all());
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(ChecklistWarehouseQuantityRequest $request, $id)
    {
        $checklistWarehouseQuantity = ChecklistWarehouseQuantity::find($id);
        $checklistWarehouseQuantity->update($request->all());

        return $checklistWarehouseQuantity;
    }

    public function destroy(ChecklistWarehouseQuantity $checklistWarehouseQuantity)
    {
        $checklistWarehouseQuantity->delete();

        return $checklistWarehouseQuantity;
    }
}
