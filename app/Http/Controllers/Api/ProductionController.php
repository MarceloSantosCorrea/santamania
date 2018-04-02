<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProductionRequest;
use App\Models\Production;

class ProductionController extends Controller
{
    use ControllerTrait;
    protected $model;
    protected $relationships = [
        'product',
    ];

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
        $production = Production::create($request->all());

        return Production::with($this->relationships())->find($production->id);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(ProductionRequest $request, $id)
    {
        $production = Production::find($id);
        $production->update($request->all());

        return Production::with($this->relationships())->find($production->id);
    }

    public function destroy(Production $production)
    {
        $production->delete();

        return $production;
    }
}
