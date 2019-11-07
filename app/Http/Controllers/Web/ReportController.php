<?php

namespace App\Http\Controllers\Web;

use App\Models\Product;
use App\Models\Production;
use Illuminate\Http\Request;

class ReportController extends AbstractController
{
    public function index()
    {
        return view('pages.report.index');
    }

    public function out(Request $request)
    {
        $data     = $productModel = $dataPost = null;
        $products = Product::where('active', 1)->orderBy('name')->get();

        if ($request->method() == 'POST') {

            $dataPost = $request->all();
            if (isset($dataPost['product_id'])) {

                $productModel = Product::find($dataPost['product_id']);
                $date_start   = isset($dataPost['date_start']) ? date('Y-m-d',
                    strtotime($dataPost['date_start'].'-1day')) : date('Y-m-d', strtotime(date('Y-m-01').'-1day'));
                $date_end     = isset($dataPost['date_end']) ? date('Y-m-d',
                    strtotime($dataPost['date_end'].'+1day')) : date('Y-m-d', strtotime(date('Y-m-d').'+1day'));

                $rows = \DB::table('checklist_products')
                           ->join('checklists', 'checklists.id', '=', 'checklist_products.checklist_id')
                           ->join('checklist_totals', 'checklist_products.id', '=',
                               'checklist_totals.checklist_product_id')
                           ->where('checklist_products.product_id', $dataPost['product_id'])
                           ->whereBetween('checklists.date', [$date_start, $date_end])
                           ->get();

                if ($rows->count()) {
                    foreach ($rows as $row) {
                        $data[] = [
                            'y' => $row->date,
                            'a' => $row->difference,
                        ];
                    }

                    $data = json_encode($data);
                }
            }
        }

        return view('pages.report.out', compact('products', 'data', 'productModel', 'dataPost'));
    }

    public function production(Request $request)
    {
        $data = null;

        $products = Product::where('active', 1)->orderBy('name')->get();

        if ($request->method() == 'POST') {

            $query = Production::query();
            if ($request->product_id) {
                $query->where('product_id', $request->product_id);
            }

            if ($request->date_start) {
                $query->where('date', '>=', $request->date_start);
            }

            if ($request->date_end) {
                $query->where('date', '<=', $request->date_end);
            }

            $query->groupBy('product_id');

            $data = $query->get([
                'product_id', \DB::raw('SUM(quantity) as "total"'),
            ]);
        }

        return view('pages.report.production', compact('products', 'data'));
    }
}
