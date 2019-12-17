<?php

Auth::routes(['register' => false]);

Route::group(['middleware' => ['auth']], function () {
    Route::group(['namespace' => 'Web'], function () {

        Route::get('/', 'IndexController@index')
             ->name('home')->middleware('can:home');
        Route::get('/logout', 'IndexController@logout')->name('logout');

        Route::group(['as' => 'web.'], function () {
            Route::get('/logs', 'LogController@index')
                 ->name('log.index');

            Route::get('/profile', 'UserController@profile')->name('user.profile');
            Route::put('/profile', 'UserController@updateProfile')->name('user.updateProfile');

            Route::get('/reports', 'ReportController@index')->name('report.index');
            Route::get('/reports/out', 'ReportController@out')->name('report.out');
            Route::post('/reports/out', 'ReportController@out')->name('report.out');
            Route::get('/reports/production', 'ReportController@production')->name('report.production');
            Route::post('/reports/production', 'ReportController@production')->name('report.production');

            Route::group(['prefix' => 'checklist-actions'], function () {
                Route::patch('{checklist}/close', 'ChecklistActionsController@close')
                     ->name('checklist-actions.close');
                Route::get('{checklist}/reopen', 'ChecklistActionsController@reopen')
                     ->name('checklist-actions.reopen');
            });

            Route::group(['prefix' => 'checklist-totals'], function () {
                Route::get('{checklist}', 'ChecklistTotalController@index')->name('checklist-totals.index');
            });

            /**
             * checklist-product
             */
            Route::group(['prefix' => 'checklist-product'], function () {
                Route::get('/create/{checklist}/{product}', 'ChecklistProductController@create')
                     ->name('checklist-product.create');
                Route::post('/store', 'ChecklistProductController@store')
                     ->name('checklist-product.store');
                Route::get('/edit/{checklist}/{product}', 'ChecklistProductController@edit')
                     ->name('checklist-product.edit');
                Route::put('/update/{checklistProduct}', 'ChecklistProductController@update')
                     ->name('checklist-product.update');
                Route::get('/destroy/{checklist}/{product}', 'ChecklistProductController@destroy')
                     ->name('checklist-product.destroy');
            });

            Route::group(['prefix' => 'filters'], function () {
                Route::get('/', 'FiltersController@index')
                     ->name('filters.index');
                Route::get('/create', 'FiltersController@create')
                     ->name('filters.create');
                Route::post('/store', 'FiltersController@store')
                     ->name('filters.store');
                Route::get('/show/{uid}', 'FiltersController@show')
                     ->name('filters.show');
                Route::get('/edit/{uid}', 'FiltersController@edit')
                     ->name('filters.edit');
                Route::put('/update/{uid}', 'FiltersController@update')
                     ->name('filters.update');
                Route::get('/destroy/{uid}', 'FiltersController@destroy')
                     ->name('filters.destroy');
            });

            Route::group(['prefix' => 'checklist'], function () {
                Route::get('/', 'ChecklistController@index')
                     ->name('checklist.index')->middleware('can:list_checklists');
                Route::get('/create', 'ChecklistController@create')
                     ->name('checklist.create')->middleware('can:create_checklists');
                Route::post('/store', 'ChecklistController@store')
                     ->name('checklist.store')->middleware('can:create_checklists');
                Route::get('/show/{checklist}', 'ChecklistController@show')
                     ->name('checklist.show')->middleware('can:show_checklists');
                Route::get('/edit/{checklist}', 'ChecklistController@edit')
                     ->name('checklist.edit')->middleware('can:edit_checklists');
                Route::put('/update/{checklist}', 'ChecklistController@update')
                     ->name('checklist.update')->middleware('can:edit_checklists');
                Route::get('/destroy/{checklist}', 'ChecklistController@destroy')
                     ->name('checklist.destroy')->middleware('can:delete_checklists');
            });

            Route::group(['prefix' => 'production'], function () {
                Route::get('/', 'ProductionController@index')
                     ->name('production.index')->middleware('can:list_productions');
                Route::get('/create', 'ProductionController@create')
                     ->name('production.create')->middleware('can:create_productions');
                Route::post('/store', 'ProductionController@store')
                     ->name('production.store')->middleware('can:create_productions');
                Route::get('/edit/{production}', 'ProductionController@edit')
                     ->name('production.edit')->middleware('can:edit_productions');
                Route::put('/update/{production}', 'ProductionController@update')
                     ->name('production.update')->middleware('can:edit_productions');
                Route::get('/destroy/{production}', 'ProductionController@destroy')
                     ->name('production.destroy')->middleware('can:delete_productions');
            });

            Route::group(['prefix' => 'discard'], function () {
                Route::get('/', 'DiscardController@index')
                     ->name('discard.index')->middleware('can:list_discards');
                Route::get('/create', 'DiscardController@create')
                     ->name('discard.create')->middleware('can:create_discards');
                Route::post('/store', 'DiscardController@store')
                     ->name('discard.store')->middleware('can:create_discards');
                Route::get('/edit/{discard}', 'DiscardController@edit')
                     ->name('discard.edit')->middleware('can:edit_discards');
                Route::put('/update/{discard}', 'DiscardController@update')
                     ->name('discard.update')->middleware('can:edit_discards');
                Route::get('/destroy/{discard}', 'DiscardController@destroy')
                     ->name('discard.destroy')->middleware('can:delete_discards');
            });

            Route::group(['prefix' => 'supplier'], function () {
                Route::get('/', 'SupplierController@index')
                     ->name('supplier.index')->middleware('can:list_suppliers');
                Route::get('/create', 'SupplierController@create')
                     ->name('supplier.create')->middleware('can:create_suppliers');
                Route::post('/store', 'SupplierController@store')
                     ->name('supplier.store')->middleware('can:create_suppliers');
                Route::get('/edit/{supplier}', 'SupplierController@edit')
                     ->name('supplier.edit')->middleware('can:edit_suppliers');
                Route::put('/update/{supplier}', 'SupplierController@update')
                     ->name('supplier.update')->middleware('can:edit_suppliers');
                Route::get('/destroy/{supplier}', 'SupplierController@destroy')
                     ->name('supplier.destroy')->middleware('can:delete_suppliers');
            });

            Route::group(['prefix' => 'product'], function () {
                Route::get('/', 'ProductController@index')
                     ->name('product.index')->middleware('can:list_products');
                Route::get('/create', 'ProductController@create')
                     ->name('product.create')->middleware('can:create_products');
                Route::post('/store', 'ProductController@store')
                     ->name('product.store')->middleware('can:create_products');
                Route::get('/edit/{product}', 'ProductController@edit')
                     ->name('product.edit')->middleware('can:edit_products');
                Route::put('/update/{product}', 'ProductController@update')
                     ->name('product.update')->middleware('can:edit_products');
                Route::get('/destroy/{product}', 'ProductController@destroy')
                     ->name('product.destroy')->middleware('can:delete_products');
            });

            Route::group(['prefix' => 'product-category'], function () {
                Route::get('/', 'ProductCategoryController@index')
                     ->name('product-category.index')->middleware('can:list_product_categories');
                Route::get('/create', 'ProductCategoryController@create')
                     ->name('product-category.create')->middleware('can:create_product_categories');
                Route::post('/store', 'ProductCategoryController@store')
                     ->name('product-category.store')->middleware('can:create_product_categories');
                Route::get('/edit/{product_category}', 'ProductCategoryController@edit')
                     ->name('product-category.edit')->middleware('can:edit_product_categories');
                Route::put('/update/{product_category}', 'ProductCategoryController@update')
                     ->name('product-category.update')->middleware('can:edit_product_categories');
                Route::get('/destroy/{product_category}', 'ProductCategoryController@destroy')
                     ->name('product-category.destroy')->middleware('can:delete_product_categories');
            });

            Route::group(['prefix' => 'product-days'], function () {
                Route::get('/{product}', 'ProductDaysController@index')
                     ->name('product-days.index')->middleware('can:update_product_days');
                Route::put('/update/{dailyChecklist}', 'ProductDaysController@update')
                     ->name('product-days.update')->middleware('can:update_product_days');
            });

            Route::get('/settings', 'SettingsController@index')
                 ->name('settings.index')->middleware('can:update_settings');
            Route::post('/settings', 'SettingsController@store')
                 ->name('settings.store')->middleware('can:update_settings');

            Route::group(['prefix' => 'units-measure'], function () {
                Route::get('/', 'UnitsMeasureController@index')
                     ->name('units-measure.index')->middleware('can:list_units_measures');
                Route::get('/create', 'UnitsMeasureController@create')
                     ->name('units-measure.create')->middleware('can:create_units_measures');
                Route::post('/store', 'UnitsMeasureController@store')
                     ->name('units-measure.store')->middleware('can:create_units_measures');
                Route::get('/edit/{units_measure}', 'UnitsMeasureController@edit')
                     ->name('units-measure.edit')->middleware('can:edit_units_measures');
                Route::put('/update/{units_measure}', 'UnitsMeasureController@update')
                     ->name('units-measure.update')->middleware('can:edit_units_measures');
                Route::get('/destroy/{units_measure}', 'UnitsMeasureController@destroy')
                     ->name('units-measure.destroy')->middleware('can:delete_units_measures');
            });

            Route::group(['prefix' => 'sector'], function () {
                Route::get('/', 'SectorController@index')
                     ->name('sector.index')->middleware('can:list_sectors');
                Route::get('/create', 'SectorController@create')
                     ->name('sector.create')->middleware('can:create_sectors');
                Route::post('/store', 'SectorController@store')
                     ->name('sector.store')->middleware('can:create_sectors');
                Route::get('/edit/{sector}', 'SectorController@edit')
                     ->name('sector.edit')->middleware('can:edit_sectors');
                Route::put('/update/{sector}', 'SectorController@update')
                     ->name('sector.update')->middleware('can:edit_sectors');
                Route::get('/destroy/{sector}', 'SectorController@destroy')
                     ->name('sector.destroy')->middleware('can:delete_sectors');
            });

            Route::group(['prefix' => 'warehouse'], function () {
                Route::get('/', 'WarehouseController@index')
                     ->name('warehouse.index')->middleware('can:list_warehouses');
                Route::get('/create', 'WarehouseController@create')
                     ->name('warehouse.create')->middleware('can:create_warehouses');
                Route::post('/store', 'WarehouseController@store')
                     ->name('warehouse.store')->middleware('can:create_warehouses');
                Route::get('/edit/{warehouse}', 'WarehouseController@edit')
                     ->name('warehouse.edit')->middleware('can:edit_warehouses');
                Route::put('/update/{warehouse}', 'WarehouseController@update')
                     ->name('warehouse.update')->middleware('can:edit_warehouses');
                Route::get('/destroy/{warehouse}', 'WarehouseController@destroy')
                     ->name('warehouse.destroy')->middleware('can:delete_warehouses');
            });

            Route::group(['prefix' => 'user'], function () {
                Route::get('/', 'UserController@index')
                     ->name('user.index')->middleware('can:list_users');
                Route::get('/create', 'UserController@create')
                     ->name('user.create')->middleware('can:create_users');
                Route::post('/store', 'UserController@store')
                     ->name('user.store')->middleware('can:create_users');
                Route::get('/edit/{user}', 'UserController@edit')
                     ->name('user.edit')->middleware('can:edit_users');
                Route::put('/update/{user}', 'UserController@update')
                     ->name('user.update')->middleware('can:edit_users');
                Route::get('/destroy/{user}', 'UserController@destroy')
                     ->name('user.destroy')->middleware('can:delete_users');
            });

            Route::group(['prefix' => 'task'], function () {
                Route::get('/', 'TaskController@index')
                     ->name('task.index')->middleware('can:list_tasks');
                Route::get('/create', 'TaskController@create')
                     ->name('task.create')->middleware('can:create_tasks');
                Route::post('/store', 'TaskController@store')
                     ->name('task.store')->middleware('can:create_tasks');
                Route::get('/edit/{task}', 'TaskController@edit')
                     ->name('task.edit')->middleware('can:edit_tasks');
                Route::put('/update/{task}', 'TaskController@update')
                     ->name('task.update')->middleware('can:edit_tasks');
                Route::put('/finalize/{task}', 'TaskController@finalize')
                     ->name('task.finalize')->middleware('can:finalize_tasks');
                Route::get('/destroy/{task}', 'TaskController@destroy')
                     ->name('task.destroy')->middleware('can:delete_tasks');
            });

            Route::group(['namespace' => 'Acl', 'prefix' => 'acl'], function () {
                Route::group(['prefix' => 'roles'], function () {
                    Route::get('/', 'AclRoleController@index')
                         ->name('acl.role.index');
                    Route::get('/create', 'AclRoleController@create')
                         ->name('acl.role.create');
                    Route::post('/store', 'AclRoleController@store')
                         ->name('acl.role.store');
                    Route::get('/edit/{acl_role}', 'AclRoleController@edit')
                         ->name('acl.role.edit');
                    Route::put('/update/{acl_role}', 'AclRoleController@update')
                         ->name('acl.role.update');
                    Route::get('/destroy/{acl_role}', 'AclRoleController@destroy')
                         ->name('acl.role.destroy');
                });
                Route::group(['prefix' => 'permissions'], function () {
                    Route::get('/', 'AclPermissionController@index')
                         ->name('acl.permission.index');
                    Route::get('/create', 'AclPermissionController@create')
                         ->name('acl.permission.create');
                    Route::post('/store', 'AclPermissionController@store')
                         ->name('acl.permission.store');
                    Route::get('/edit/{acl_permission}', 'AclPermissionController@edit')
                         ->name('acl.permission.edit');
                    Route::put('/update/{acl_permission}', 'AclPermissionController@update')
                         ->name('acl.permission.update');
                    Route::get('/destroy/{acl_permission}', 'AclPermissionController@destroy')
                         ->name('acl.permission.destroy');
                });

                Route::group(['prefix' => 'permissions-role'], function () {
                    Route::get('/show/{acl_role}', 'AclPermissionRoleController@show')
                         ->name('acl.permission.role.show');
                    Route::put('/update/{acl_role}', 'AclPermissionRoleController@update')
                         ->name('acl.permission.role.update');
                });
            });
        });
    });
});
