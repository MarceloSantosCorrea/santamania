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
        $data     = $productModel = null;
        $products = Product::where('active', 1)->orderBy('name')->get();

        if ($request->method() == 'POST') {

            $query = \DB::table('checklist_totals')
                        ->join('checklist_products', 'checklist_products.id', '=',
                            'checklist_totals.checklist_product_id')
                        ->join('products', 'products.id', '=', 'checklist_products.product_id')
                        ->join('checklists', 'checklists.id', '=', 'checklist_products.checklist_id')
                        ->join('units_measures', 'units_measures.id', '=', 'products.units_measure_id')
                        ->groupBy('products.id');

            if ($request->product_id) {
                $query->where('checklist_products.product_id', $request->product_id);
            }

            $date_start = date('Y-m-d', strtotime($request->date_start ?? date('Y-m-01')));
            $date_end   = date('Y-m-d', strtotime($request->date_end ?? date('Y-m-01')));
            $query->whereBetween('checklists.date', [$date_start, $date_end]);

            $result = $query->get([
                'checklist_products.product_id',
                'products.name',
                'units_measures.symbol',
                \DB::raw('SUM(output) as "total"'),
            ]);

            if ($result->count()) {
                $data = $result;
            }
        }

        return view('pages.report.out', compact('products', 'data'));
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
