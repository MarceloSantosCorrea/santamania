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

        if (isset($params['quantities']) && count($params['quantities']) > 0) {
            $row = [];
            foreach ($params['quantities'] as $k => $v) {
                $row[] = [
                    "warehouse_id" => $k,
                    "quantity"     => $v,
                ];
            }

            $params['quantities'] = json_encode($row);
        }

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
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
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
