<?php

namespace App\Http\Controllers\Web;

use App\Models\Checklist;
use App\Models\ChecklistProduct;
use App\Models\Product;
use App\Models\Warehouse;
use Illuminate\Http\Request;

class ChecklistProductController extends AbstractController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = ChecklistProduct::paginate();

        return view('pages.checklist-product.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Checklist $checklist, Product $product)
    {
        $warehouses = Warehouse::where(['active' => 1])->get();

        return view('pages.checklist-product.create', compact('checklist', 'product', 'warehouses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $params = $request->all();

        $total = 0;
        if (isset($params['quantities']) && count($params['quantities']) > 0) {

            $row = [];
            foreach ($params['quantities'] as $k => $v) {
                $row[] = [
                    "warehouse_id" => $k,
                    "quantity"     => $v,
                ];
                $total += $v;
            }

            $params['quantities'] = json_encode($row);
        }

        $params['total'] = $total;

        if (ChecklistProduct::create($params))
            return redirect()
                ->route('web.checklist.show', $params['checklist_id'])
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.checklist.show', $params['checklist_id'])
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
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Checklist $checklist, Product $product)
    {
        $checklistProduct = ChecklistProduct::where([
            'checklist_id' => $checklist->id,
            'product_id'   => $product->id,
        ])->first();

        $warehouses = Warehouse::warehouseWithQuantities($checklistProduct);

        return view('pages.checklist-product.edit', compact('checklist', 'product', 'warehouses', 'checklistProduct'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ChecklistProduct $checklistProduct)
    {
        $params                 = $request->all();
        $params['checklist_id'] = $checklistProduct->checklist_id;
        $params['product_id']   = $checklistProduct->product_id;

        $total = 0;
        if (isset($params['quantities']) && count($params['quantities']) > 0) {
            $row = [];

            foreach ($params['quantities'] as $k => $v) {
                $row[] = [
                    "warehouse_id" => $k,
                    "quantity"     => $v,
                ];

                $total += $v;
            }

            $params['quantities'] = json_encode($row);
        }

        $params['total'] = $total;

        $checklistProduct->fill($params);
        if ($checklistProduct->save())
            return redirect()
                ->route('web.checklist.show', $checklistProduct->checklist_id)
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.checklist.show', $checklistProduct->checklist_id)
            ->with('error', 'Erro ao salvar');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
