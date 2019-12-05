<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\UnitsMeasureRequest;
use App\Models\UnitsMeasure;

class UnitsMeasureController extends Controller
{
    use ControllerTrait;
    protected $model;

    public function __construct(UnitsMeasure $model)
    {
        $this->model = $model;
    }

    public function show(UnitsMeasure $unitsMeasure)
    {
        return $unitsMeasure;
    }

    /**
     * Store a newly created resource in storage.
     *
     */
    public function store(UnitsMeasureRequest $request)
    {
        return UnitsMeasure::create($request->all());
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UnitsMeasureRequest $request, $id)
    {
        $unitsMeasure = UnitsMeasure::find($id);
        $unitsMeasure->update($request->all());

        return $unitsMeasure;
    }

    public function destroy(UnitsMeasure $unitsMeasure)
    {
        $unitsMeasure->delete();

        return $unitsMeasure;
    }
}
