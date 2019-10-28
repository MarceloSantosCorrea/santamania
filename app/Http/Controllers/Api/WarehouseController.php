<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\WarehouseRequest;
use App\Models\Warehouse;

class WarehouseController extends Controller
{
    use ControllerTrait;
    protected $model;

    /**
     * WarehouseController constructor.
     *
     * @param  Warehouse  $model
     */
    public function __construct(Warehouse $model)
    {
        $this->model = $model;
    }

    /**
     * Display the specified resource.
     */
    public function show(Warehouse $warehouse)
    {
        return $warehouse;
    }

    public function store(WarehouseRequest $request)
    {
        return $this->model::create($request->all());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     */
    public function update(WarehouseRequest $request, $model)
    {
        $row = $this->model->with($this->relationships())->find($model);
        $row->update($request->all());

        return $row;
    }

    public function destroy(Warehouse $warehouse)
    {
        $warehouse->delete();

        return $warehouse;
    }
}
