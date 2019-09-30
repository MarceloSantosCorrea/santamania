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

                $date_start = isset($dataPost['date_start']) ? date('Y-m-d',
                    strtotime($dataPost['date_start'].'-1day')) : date('Y-m-d', strtotime(date('Y-m-01').'-1day'));
                $date_end   = isset($dataPost['date_end']) ? date('Y-m-d',
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
        $data = $productModel = $dataPost = null;

        $products = Product::where('active', 1)->get();

        if ($request->method() == 'POST') {

            $dataPost = $request->all();

            if (isset($dataPost['product_id'])) {

                $productModel = Product::find($dataPost['product_id']);

                $date_start = isset($dataPost['date_start']) ? $dataPost['date_start'] : date('Y-m-01');
                $date_end   = isset($dataPost['date_end']) ? $dataPost['date_end'] : date('Y-m-d');

                $rows = \DB::table('productions')->where('productions.product_id', $dataPost['product_id'])
                           ->whereBetween('productions.date', [$date_start, $date_end])
                    //->toSql();
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
