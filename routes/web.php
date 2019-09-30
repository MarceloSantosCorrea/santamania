<?php

Auth::routes(['register' => false]);

Route::group(['middleware' => ['auth']], function () {
    Route::group(['namespace' => 'Web'], function () {

        Route::get('/', 'IndexController@index')->name('home');
        Route::get('/logout', 'IndexController@logout')->name('logout');

        Route::group(['as' => 'web.'], function () {
            Route::get('/profile', 'UserController@profile')->name('user.profile');
            Route::put('/profile', 'UserController@updateProfile')->name('user.updateProfile');

            Route::get('/reports', 'ReportController@index')->name('report.index');
            Route::get('/reports/out', 'ReportController@out')->name('report.out');
            Route::post('/reports/out', 'ReportController@out')->name('report.out');

            Route::get('/reports/production', 'ReportController@production')->name('report.production');
            Route::post('/reports/production', 'ReportController@production')->name('report.production');

            Route::group(['prefix' => 'checklist-actions'], function () {
                Route::patch('{checklist}/close', 'ChecklistActionsController@close')->name('checklist-actions.close');
                Route::get('{checklist}/reopen', 'ChecklistActionsController@reopen')->name('checklist-actions.reopen');
            });

            Route::group(['prefix' => 'checklist-totals'], function () {
                Route::get('{checklist}', 'ChecklistTotalController@index')->name('checklist-totals.index');
            });

            Route::group(['prefix' => 'checklist-product'], function () {
                Route::get('/create/{checklist}/{product}',
                    'ChecklistProductController@create')->name('checklist-product.create');
                Route::post('/store', 'ChecklistProductController@store')->name('checklist-product.store');
                Route::get('/edit/{checklist}/{product}',
                    'ChecklistProductController@edit')->name('checklist-product.edit');
                Route::put('/update/{checklistProduct}',
                    'ChecklistProductController@update')->name('checklist-product.update');
                Route::get('/destroy/{checklist}/{product}',
                    'ChecklistProductController@destroy')->name('checklist-product.destroy');
            });

            Route::group(['prefix' => 'filters'], function () {
                Route::get('/', 'FiltersController@index')->name('filters.index');
                Route::get('/create', 'FiltersController@create')->name('filters.create');
                Route::post('/store', 'FiltersController@store')->name('filters.store');
                Route::get('/show/{uid}', 'FiltersController@show')->name('filters.show');
                Route::get('/edit/{uid}', 'FiltersController@edit')->name('filters.edit');
                Route::put('/update/{uid}', 'FiltersController@update')->name('filters.update');
                Route::get('/destroy/{uid}', 'FiltersController@destroy')->name('filters.destroy');
            });

            Route::group(['prefix' => 'checklist'], function () {
                Route::get('/', 'ChecklistController@index')->name('checklist.index');
                Route::get('/create', 'ChecklistController@create')->name('checklist.create');
                Route::post('/store', 'ChecklistController@store')->name('checklist.store');
                Route::get('/show/{checklist}', 'ChecklistController@show')->name('checklist.show');
                Route::get('/edit/{checklist}', 'ChecklistController@edit')->name('checklist.edit');
                Route::put('/update/{checklist}', 'ChecklistController@update')->name('checklist.update');
                Route::get('/destroy/{checklist}', 'ChecklistController@destroy')->name('checklist.destroy');
            });

            Route::group(['prefix' => 'production'], function () {
                Route::get('/', 'ProductionController@index')->name('production.index');
                Route::get('/create', 'ProductionController@create')->name('production.create');
                Route::post('/store', 'ProductionController@store')->name('production.store');
                Route::get('/edit/{production}', 'ProductionController@edit')->name('production.edit');
                Route::put('/update/{production}', 'ProductionController@update')->name('production.update');
                Route::get('/destroy/{production}', 'ProductionController@destroy')->name('production.destroy');
            });

            Route::group(['prefix' => 'product'], function () {
                Route::get('/',
                    'ProductController@index')->name('product.index'); //->middleware('can:list_products'); //
                Route::get('/create', 'ProductController@create')->name('product.create');
                Route::post('/store', 'ProductController@store')->name('product.store');
                Route::get('/edit/{product}', 'ProductController@edit')->name('product.edit');
                Route::put('/update/{product}', 'ProductController@update')->name('product.update');
                Route::get('/destroy/{product}', 'ProductController@destroy')->name('product.destroy');
            });

            Route::group(['prefix' => 'product-category'], function () {
                Route::get('/', 'ProductCategoryController@index')->name('product-category.index');
                Route::get('/create', 'ProductCategoryController@create')->name('product-category.create');
                Route::post('/store', 'ProductCategoryController@store')->name('product-category.store');
                Route::get('/edit/{product_category}', 'ProductCategoryController@edit')->name('product-category.edit');
                Route::put('/update/{product_category}',
                    'ProductCategoryController@update')->name('product-category.update');
                Route::get('/destroy/{product_category}',
                    'ProductCategoryController@destroy')->name('product-category.destroy');
            });

            Route::group(['prefix' => 'product-days'], function () {
                Route::get('/{product}', 'ProductDaysController@index')->name('product-days.index');
                Route::put('/update/{dailyChecklist}', 'ProductDaysController@update')->name('product-days.update');
            });

            Route::group(['prefix' => 'units-measure'], function () {
                Route::get('/', 'UnitsMeasureController@index')->name('units-measure.index');
                Route::get('/create', 'UnitsMeasureController@create')->name('units-measure.create');
                Route::post('/store', 'UnitsMeasureController@store')->name('units-measure.store');
                Route::get('/edit/{units_measure}', 'UnitsMeasureController@edit')->name('units-measure.edit');
                Route::put('/update/{units_measure}', 'UnitsMeasureController@update')->name('units-measure.update');
                Route::get('/destroy/{units_measure}', 'UnitsMeasureController@destroy')->name('units-measure.destroy');
            });

            Route::group(['prefix' => 'warehouse'], function () {
                Route::get('/', 'WarehouseController@index')->name('warehouse.index');
                Route::get('/create', 'WarehouseController@create')->name('warehouse.create');
                Route::post('/store', 'WarehouseController@store')->name('warehouse.store');
                Route::get('/edit/{warehouse}', 'WarehouseController@edit')->name('warehouse.edit');
                Route::put('/update/{warehouse}', 'WarehouseController@update')->name('warehouse.update');
                Route::get('/destroy/{warehouse}', 'WarehouseController@destroy')->name('warehouse.destroy');
            });

            Route::group(['prefix' => 'user'], function () {
                Route::get('/', 'UserController@index')->name('user.index');
                Route::get('/create', 'UserController@create')->name('user.create');
                Route::post('/store', 'UserController@store')->name('user.store');
                Route::get('/edit/{user}', 'UserController@edit')->name('user.edit');
                Route::put('/update/{user}', 'UserController@update')->name('user.update');
                Route::get('/destroy/{user}', 'UserController@destroy')->name('user.destroy');
            });

            Route::group(['prefix' => 'task'], function () {
                Route::get('/', 'TaskController@index')->name('task.index');
                Route::get('/create', 'TaskController@create')->name('task.create');
                Route::post('/store', 'TaskController@store')->name('task.store');
                Route::get('/edit/{task}', 'TaskController@edit')->name('task.edit');
                Route::put('/update/{task}', 'TaskController@update')->name('task.update');
                Route::put('/finalize/{task}', 'TaskController@finalize')->name('task.finalize');
                Route::get('/destroy/{task}', 'TaskController@destroy')->name('task.destroy');
            });

            Route::group(['namespace' => 'Acl', 'prefix' => 'acl'], function () {
                Route::group(['prefix' => 'roles'], function () {
                    Route::get('/', 'AclRoleController@index')->name('acl.role.index');
                    Route::get('/create', 'AclRoleController@create')->name('acl.role.create');
                    Route::post('/store', 'AclRoleController@store')->name('acl.role.store');
                    Route::get('/edit/{acl_role}', 'AclRoleController@edit')->name('acl.role.edit');
                    Route::put('/update/{acl_role}', 'AclRoleController@update')->name('acl.role.update');
                    Route::get('/destroy/{acl_role}', 'AclRoleController@destroy')->name('acl.role.destroy');
                });
                Route::group(['prefix' => 'permissions'], function () {
                    Route::get('/', 'AclPermissionController@index')->name('acl.permission.index');
                    Route::get('/create', 'AclPermissionController@create')->name('acl.permission.create');
                    Route::post('/store', 'AclPermissionController@store')->name('acl.permission.store');
                    Route::get('/edit/{acl_permission}', 'AclPermissionController@edit')->name('acl.permission.edit');
                    Route::put('/update/{acl_permission}',
                        'AclPermissionController@update')->name('acl.permission.update');
                    Route::get('/destroy/{acl_permission}',
                        'AclPermissionController@destroy')->name('acl.permission.destroy');
                });

                Route::group(['prefix' => 'permissions-role'], function () {
                    Route::get('/show/{acl_role}',
                        'AclPermissionRoleController@show')->name('acl.permission.role.show');
                    Route::put('/update/{acl_role}',
                        'AclPermissionRoleController@update')->name('acl.permission.role.update');
                });
            });
        });
    });
});
