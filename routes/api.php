<?php

use Illuminate\Http\Request;

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::prefix('v1')->middleware('auth:api')->group(function () {
    Route::apiResources([
        '/product-category'             => 'Api\\ProductCategoryController',
        '/warehouse'                    => 'Api\\WarehouseController',
        '/units-measure'                => 'Api\\UnitsMeasureController',
        '/user'                         => 'Api\\UserController',
        '/product'                      => 'Api\\ProductController',
        '/production'                   => 'Api\\ProductionController',
        '/checklist'                    => 'Api\\ChecklistController',
        '/checklist-product'            => 'Api\\ChecklistProductController',
        '/checklist-warehouse-quantity' => 'Api\\ChecklistWarehouseQuantityController',
    ]);

    Route::prefix('checklist-actions')->group(function () {
        Route::post('{checklist}/close', 'Api\\ChecklistActionsController@close');
    });
});
