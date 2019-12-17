<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\ProductRequest;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\Supplier;
use App\Models\UnitsMeasure;
use Illuminate\Http\Request;

class ProductController extends AbstractController
{
    /**
     * Display a listing of the resource.
     *
     * @param  Request  $request
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        $params = $request->all();
        if (isset($params['search'])) {
            $data = (new Product)->search($params['search'])->orderBy('name', 'ASC')->paginate(30);
        } else {
            $data = Product::with(['productCategory'])->orderBy('name', 'ASC')->paginate(15);
        }

        return view('pages.product.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create()
    {
        $productCategories = ProductCategory::query()->where(['active' => 1])->get();
        $unitsMeasures     = UnitsMeasure::all();
        $suppliers         = Supplier::all();

        return view('pages.product.create', compact('productCategories', 'unitsMeasures', 'suppliers'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  ProductRequest  $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(ProductRequest $request)
    {
        try {
            if (Product::createCustom($request->all())) {
                return redirect()
                    ->route('web.product.index')
                    ->with('success', 'Salvo com sucesso');
            }
        } catch (\Exception $e) {
            return redirect()
                ->route('web.product.index')
                ->with('error', 'Erro ao salvar');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Product  $product
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit(Product $product)
    {
        $productCategories = ProductCategory::query()->where(['active' => 1])->get();
        $unitsMeasures     = UnitsMeasure::all();
        $suppliers         = Supplier::all();

        return view('pages.product.edit', compact('product', 'productCategories', 'unitsMeasures', 'suppliers'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  ProductRequest  $request
     * @param  Product  $product
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(ProductRequest $request, Product $product)
    {
        try {
            if (Product::updateCustom($product, $request->all())) {
                return redirect()
                    ->route('web.product.index')
                    ->with('success', 'Salvo com sucesso');
            }
        } catch (\Exception $e) {
            return redirect()
                ->route('web.product.index')
                ->with('error', 'Erro ao salvar');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Product  $product
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy(Product $product)
    {
        if ($product->delete()) {
            return redirect()
                ->route('web.product.index')
                ->with('success', 'Deletado com sucesso');
        }

        return redirect()
            ->route('web.product.index')
            ->with('error', 'Erro ao deletar');
    }
}
