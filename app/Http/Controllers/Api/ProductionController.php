<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProductionRequest;
use App\Models\Production;

class ProductionController extends Controller
{
    use ControllerTrait;
    protected $model;

    public function __construct(Production $model)
    {
        $this->model = $model;
    }

    public function show(Production $production)
    {
        return $production;
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ProductionRequest $request)
    {
        return Production::create($request->all());
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(ProductionRequest $request, $id)
    {
        $production = Production::find($id);
        $production->update($request->all());

        return $production;
    }

    public function destroy(Production $production)
    {
        $production->delete();

        return $production;
    }
}
