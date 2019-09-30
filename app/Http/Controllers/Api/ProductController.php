<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProductRequest;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    use ControllerTrait;

    protected $model;
    protected $relationships = [
        'productCategory', 'unitsMeasure',
    ];

    public function __construct(Product $model)
    {
        $this->model = $model;
    }

    public function index(Request $request)
    {
        $limit = $request->all()['limit'] ?? 20;
        $order = $request->all()['order'] ?? null;
        if ($order !== null) {
            $order = explode(',', $order);
        }
        $order[0] = $order[0] ?? 'id';
        $order[1] = $order[1] ?? 'asc';
        $where    = $request->all()['where'] ?? [];
        $like     = $request->all()['like'] ?? null;
        if ($like) {
            $like    = explode(',', $like);
            $like[1] = '%'.$like[1].'%';
        }

        $result = $this->model->orderBy($order[0], $order[1])
                              ->where(function ($query) use ($like) {
                                  if ($like) {
                                      return $query->where($like[0], 'like', $like[1]);
                                  }

                                  return $query;
                              })
                              ->where($where)
                              ->with($this->relationships())
                              ->paginate($limit);

        return response()->json($result);
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return $product::with($this->relationships())->find($product->id);
    }

    /**
     * Store a newly created resource in storage.
     *
     */
    public function store(ProductRequest $request)
    {
        $product = Product::create($request->all());

        return Product::with($this->relationships())->find($product->id);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(ProductRequest $request, $id)
    {
        $product = Product::find($id);
        $product->update($request->all());

        return Product::with($this->relationships())->find($product->id);
    }

    public function destroy(Product $product)
    {
        $product->delete();

        return $product;
    }
}
