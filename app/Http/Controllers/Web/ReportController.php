<?php

namespace App\Http\Controllers\Web;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ReportController extends Controller
{
    public function index()
    {
        return view('pages.report.index');
    }

    public function out(Request $request)
    {
        $data = $productModel = $dataPost = null;

        $products = Product::where('active', 1)->get();

        if ($request->method() == 'POST') {

            $dataPost = $request->all();

            if (isset($dataPost['product_id'])) {

                $productModel = Product::find($dataPost['product_id']);

                $rows = \DB::table('checklist_products')
                    ->join('checklists', 'checklists.id', '=', 'checklist_products.checklist_id')
                    ->join('checklist_totals', 'checklist_products.id', '=', 'checklist_totals.checklist_product_id')
                    ->where('checklist_products.product_id', $dataPost['product_id'])
                    ->whereBetween('checklists.date', [isset($dataPost['date_start']) ? $dataPost['date_start'] : '2018-05-01', isset($dataPost['date_end']) ? $dataPost['date_end'] : date('Y-m-d')])
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
        $data = $productModel = $dataPost = null;

        $products = Product::where('active', 1)->get();

        if ($request->method() == 'POST') {

            $dataPost = $request->all();

            if (isset($dataPost['product_id'])) {

                $productModel = Product::find($dataPost['product_id']);

                $rows = \DB::table('productions')->where('productions.product_id', $dataPost['product_id'])
                    ->whereBetween('productions.date', [isset($dataPost['date_start']) ? $dataPost['date_start'] : '2018-05-01', isset($dataPost['date_end']) ? $dataPost['date_end'] : date('Y-m-d')])
                    ->get();

                if ($rows->count()) {
                    foreach ($rows as $row) {
                        $data[] = [
                            'y' => $row->date,
                            'a' => $row->quantity,
                        ];
                    }

                    $data = json_encode($data);
                }
            }
        }

        return view('pages.report.production', compact('products', 'data', 'productModel', 'dataPost'));
    }
}
