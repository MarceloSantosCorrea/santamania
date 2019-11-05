<?php

namespace App\Http\Controllers\Web;

use App\Http\Requests\SettingsRequest;
use App\Models\Setting;
use App\Http\Controllers\Controller;

class SettingsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.settings.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\Response
     */
    public function store(SettingsRequest $request)
    {
        try {
            if (Setting::saveCustom($request->all())) {
                return redirect()->action([
                    \App\Http\Controllers\Web\SettingsController::class, 'index',
                ])->with('success', 'Successfully saved');
            } else {
                return redirect()->action([
                    \App\Http\Controllers\Web\SettingsController::class, 'index',
                ])->with('error', 'Error to save');
            }
        } catch (\Exception $e) {
            return redirect()->action([
                \App\Http\Controllers\Web\SettingsController::class, 'index',
            ])->with('error', $e->getMessage());
        }
    }
}
