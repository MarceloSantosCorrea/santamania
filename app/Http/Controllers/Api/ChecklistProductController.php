<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ChecklistProductRequest;
use App\Models\ChecklistProduct;
use App\Models\ChecklistWarehouseQuantity;

class ChecklistProductController extends Controller
{
    use ControllerTrait;
    protected $model;
    protected $relationships = [
        'checklist', 'product', 'quantities',
    ];

    public function __construct(ChecklistProduct $model)
    {
        $this->model = $model;
    }

    public function show(ChecklistProduct $checklistProduct)
    {
        return ChecklistProduct::with($this->relationships())->find($checklistProduct->id);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ChecklistProductRequest $request)
    {
        $params = $request->all();

        $quantities = [];
        if (isset($params['quantities'])) {
            $quantities = $params['quantities'];
            unset($params['quantities']);
        }

        $checklistProduct = ChecklistProduct::create($params);

        if (count($quantities)) {
            foreach ($quantities as $quantity) {
                $quantity['checklist_product_id'] = $checklistProduct->id;
                ChecklistWarehouseQuantity::create($quantity);
            }
        }

        return $checklistProduct;
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(ChecklistProductRequest $request, $id)
    {
        $checklistProduct = ChecklistProduct::find($id);
        $checklistProduct->update($request->all());

        return $checklistProduct;
    }

    public function destroy(ChecklistProduct $checklistProduct)
    {
        $checklistProduct->delete();

        return $checklistProduct;
    }
}
