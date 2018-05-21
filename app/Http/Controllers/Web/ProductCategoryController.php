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
        if (\Gate::allows('list_product_categories')) {
            $data = ProductCategory::paginate();

            return view('pages.product-category.index', compact('data'));
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (\Gate::allows('create_product_categories')) {
            return view('pages.product-category.create');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductCategoryRequest $request)
    {
        if (\Gate::allows('create_product_categories')) {
            ProductCategory::create($request->all());

            return redirect('product-category');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit(ProductCategory $productCategory)
    {
        if (\Gate::allows('edit_product_categories')) {
            return view('pages.product-category.edit', compact('productCategory'));
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductCategoryRequest $request, ProductCategory $productCategory)
    {
        if (\Gate::allows('edit_product_categories')) {
            $productCategory->fill($request->all());

            if ($productCategory->save())
                return redirect()
                    ->route('web.product-category.index')
                    ->with('success', 'Salvo com sucesso');

            return redirect()
                ->route('web.product-category.index')
                ->with('error', 'Erro ao salvar');
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param ProductCategory $productCategory
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy(ProductCategory $productCategory)
    {
        if (\Gate::allows('delete_product_categories')) {
            if ($productCategory->delete())
                return redirect()
                    ->route('web.product-category.index')
                    ->with('success', 'Deletado com sucesso');

            return redirect()
                ->route('web.product-category.index')
                ->with('error', 'Erro ao deletar');
        }

        return view('pages.acl.unauthorized');
    }
}
