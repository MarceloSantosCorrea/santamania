<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\ChecklistProductRequest;
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
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $data = ChecklistProduct::paginate();

        return view('pages.checklist-product.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param  Checklist  $checklist
     * @param  Product  $product
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function create(Checklist $checklist, Product $product)
    {
        $warehouses = $product->warehouses;

        return view('pages.checklist-product.create', compact('checklist', 'product', 'warehouses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  ChecklistProductRequest  $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(ChecklistProductRequest $request)
    {
        try {
            if (ChecklistProduct::createCustom($request->all())) {
                return redirect()
                    ->route('web.checklist.show', $request->checklist_id)
                    ->with('success', 'Salvo com sucesso');
            }
        } catch (\Exception $e) {
            return redirect()
                ->route('web.checklist.show', $request->checklist_id)
                ->with('error', 'Erro ao salvar');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Checklist  $checklist
     * @param  Product  $product
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\View\View
     */
    public function edit(Checklist $checklist, Product $product)
    {
        if ($product->active != 1) {
            return redirect()
                ->route('web.checklist.show', $checklist)
                ->with('error', 'Este Produto com status "Desativado".');
        }

        if ($checklist->status == 0) {
            return redirect()
                ->route('web.checklist.index')
                ->with('error', 'Este Checklist já "Finalizado".');
        }

        /** @var \App\Models\ChecklistProduct $checklistProduct */
        $checklistProduct = ChecklistProduct::query()->where([
            'checklist_id' => $checklist->id, 'product_id' => $product->id,
        ])->first();

        $warehouses = Warehouse::warehouseWithQuantities($checklistProduct);

        return view('pages.checklist-product.edit', compact('checklist', 'product', 'warehouses', 'checklistProduct'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  ChecklistProductRequest  $request
     * @param  ChecklistProduct  $checklistProduct
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(ChecklistProductRequest $request, ChecklistProduct $checklistProduct)
    {
        try {
            if (ChecklistProduct::updateCustom($checklistProduct, $request->all())) {
                return redirect()
                    ->route('web.checklist.show', $checklistProduct->checklist_id)
                    ->with('success', 'Salvo com sucesso');
            }
        } catch (\Exception $e) {
            return redirect()
                ->route('web.checklist.show', $checklistProduct->checklist_id)
                ->with('error', 'Erro ao salvar');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
