<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\ProductRequest;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\UnitsMeasure;
use Illuminate\Http\Request;

class ProductController extends AbstractController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if (\Gate::allows('list_products')) {

            $params = $request->all();
            if (isset($params['search']))
                $data = (new Product)->search($params['search'])->paginate(30);
            else
                $data = Product::with(['productCategory'])->paginate(10);

            return view('pages.product.index', compact('data'));
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
        $productCategories = ProductCategory::where(['active' => 1])->get();
        $unitsMeasures     = UnitsMeasure::all();

        return view('pages.product.create', compact('productCategories', 'unitsMeasures'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        if (Product::create($request->all()))
            return redirect()
                ->route('web.product.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.product.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Product $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $productCategories = ProductCategory::where(['active' => 1])->get();
        $unitsMeasures     = UnitsMeasure::all();

        return view('pages.product.edit', compact('product', 'productCategories', 'unitsMeasures'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, Product $product)
    {
        $product->fill($request->all());

        if ($product->save())
            return redirect()
                ->route('web.product.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.product.index')
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Product $product
     * @return \Illuminate\Http\Response
     * @throws \Exception
     */
    public function destroy(Product $product)
    {
        if ($product->delete())
            return redirect()
                ->route('web.product.index')
                ->with('success', 'Deletado com sucesso');

        return redirect()
            ->route('web.product.index')
            ->with('error', 'Erro ao deletar');
    }
}
