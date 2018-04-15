<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ChecklistProductRequest;
use App\Models\ChecklistProduct;
use App\Models\ChecklistWarehouseQuantity;
use Illuminate\Http\Request;

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
            $like[1] = '%' . $like[1] . '%';
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

        if (isset($params['quantities'])) {
            $params['quantities'] = json_encode($params['quantities']);
        }

        $checklistProduct = ChecklistProduct::create($params);

        return ChecklistProduct::with($this->relationships())->find($checklistProduct->id);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(ChecklistProductRequest $request, $id)
    {
        $params = $request->all();

        $checklistProduct = ChecklistProduct::find($id);

        if (isset($params['quantities'])) {
            $params['quantities'] = json_encode($params['quantities']);
        }

        $checklistProduct->update($params);

        return ChecklistProduct::with($this->relationships())->find($checklistProduct->id);
    }

    public function destroy(ChecklistProduct $checklistProduct)
    {
        $checklistProduct->delete();

        return $checklistProduct;
    }
}
