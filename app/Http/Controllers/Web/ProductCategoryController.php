<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\ProductCategoryRequest;
use App\Models\ProductCategory;

class ProductCategoryController extends AbstractController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = ProductCategory::paginate();

        return view('pages.product-category.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.product-category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(ProductCategoryRequest $request)
    {
        ProductCategory::create($request->all());

        return redirect('product-category');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(ProductCategory $productCategory)
    {
        return view('pages.product-category.edit', compact('productCategory'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function update(ProductCategoryRequest $request, ProductCategory $productCategory)
    {
        $productCategory->fill($request->all());

        if ($productCategory->save()) {
            return redirect()
                ->route('web.product-category.index')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.product-category.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  ProductCategory  $productCategory
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy(ProductCategory $productCategory)
    {
        if ($productCategory->delete()) {
            return redirect()
                ->route('web.product-category.index')
                ->with('success', 'Deletado com sucesso');
        }

        return redirect()
            ->route('web.product-category.index')
            ->with('error', 'Erro ao deletar');
    }
}
