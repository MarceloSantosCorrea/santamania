<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProductCategoryRequest;
use App\Models\ProductCategory;

class ProductCategoryController extends Controller
{
    use ControllerTrait;
    protected $model;

    public function __construct(ProductCategory $model)
    {
        $this->model = $model;
    }

    public function show(ProductCategory $productCategory)
    {
        return $productCategory;
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ProductCategoryRequest $request)
    {
        return ProductCategory::create($request->all());
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(ProductCategoryRequest $request, $id)
    {
        $productCategory = ProductCategory::find($id);
        $productCategory->update($request->all());

        return $productCategory;
    }

    public function destroy(ProductCategory $productCategory)
    {
        $productCategory->delete();

        return $productCategory;
    }
}
