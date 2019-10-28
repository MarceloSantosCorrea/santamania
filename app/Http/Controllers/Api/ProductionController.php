<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProductionRequest;
use App\Models\Production;
use Illuminate\Http\Request;

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
