<?php

namespace App\Http\Controllers\Web;

use App\Models\Product;
use App\Models\ProductDailyChecklist;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductDaysController extends AbstractController
{
    public function index(Product $product)
    {
        $productDailyChecklist    = ProductDailyChecklist::where(['product_id' => $product->id])->first();
        $productDailyChecklistArr = json_decode($productDailyChecklist->days);

        return view('pages.product-days.index',
            compact('product', 'productDailyChecklist', 'productDailyChecklistArr'));
    }

    public function update(Request $request, ProductDailyChecklist $dailyChecklist)
    {
        $data = $request->all();
        if ($dailyChecklist->fill(["days" => json_encode($data["days"])])->save()) {
            return redirect()
                ->route('web.product.index')
                ->with('success', 'Salvo com sucesso');
        }

        return redirect()
            ->route('web.product.index')
            ->with('error', 'Erro ao salvar');
    }
}
