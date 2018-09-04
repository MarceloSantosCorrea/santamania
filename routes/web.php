<?php

Auth::routes();

$this->group(['middleware' => ['auth']], function () {
    $this->group(['namespace' => 'Web'], function () {

        $this->get('/', 'IndexController@index')->name('home');
        $this->get('/logout', 'IndexController@logout')->name('logout');

        $this->group(['as' => 'web.'], function () {
            $this->get('/profile', 'UserController@profile')->name('user.profile');
            $this->put('/profile', 'UserController@updateProfile')->name('user.updateProfile');

            $this->get('/reports', 'ReportController@index')->name('report.index');
            $this->get('/reports/out', 'ReportController@out')->name('report.out');
            $this->post('/reports/out', 'ReportController@out')->name('report.out');

            $this->get('/reports/production', 'ReportController@production')->name('report.production');
            $this->post('/reports/production', 'ReportController@production')->name('report.production');

            $this->group(['prefix' => 'checklist-actions'], function () {
                $this->patch('{checklist}/close', 'ChecklistActionsController@close')->name('checklist-actions.close');
                $this->get('{checklist}/reopen', 'ChecklistActionsController@reopen')->name('checklist-actions.reopen');
            });

            $this->group(['prefix' => 'checklist-totals'], function () {
                $this->get('{checklist}', 'ChecklistTotalController@index')->name('checklist-totals.index');
            });

            $this->group(['prefix' => 'checklist-product'], function () {
                $this->get('/create/{checklist}/{product}', 'ChecklistProductController@create')->name('checklist-product.create');
                $this->post('/store', 'ChecklistProductController@store')->name('checklist-product.store');
                $this->get('/edit/{checklist}/{product}', 'ChecklistProductController@edit')->name('checklist-product.edit');
                $this->put('/update/{checklistProduct}', 'ChecklistProductController@update')->name('checklist-product.update');
                $this->get('/destroy/{checklist}/{product}', 'ChecklistProductController@destroy')->name('checklist-product.destroy');
            });

            $this->group(['prefix' => 'checklist'], function () {
                $this->get('/', 'ChecklistController@index')->name('checklist.index');
                $this->get('/create', 'ChecklistController@create')->name('checklist.create');
                $this->post('/store', 'ChecklistController@store')->name('checklist.store');
                $this->get('/show/{checklist}', 'ChecklistController@show')->name('checklist.show');
                $this->get('/edit/{checklist}', 'ChecklistController@edit')->name('checklist.edit');
                $this->put('/update/{checklist}', 'ChecklistController@update')->name('checklist.update');
                $this->get('/destroy/{checklist}', 'ChecklistController@destroy')->name('checklist.destroy');
            });

            $this->group(['prefix' => 'production'], function () {
                $this->get('/', 'ProductionController@index')->name('production.index');
                $this->get('/create', 'ProductionController@create')->name('production.create');
                $this->post('/store', 'ProductionController@store')->name('production.store');
                $this->get('/edit/{production}', 'ProductionController@edit')->name('production.edit');
                $this->put('/update/{production}', 'ProductionController@update')->name('production.update');
                $this->get('/destroy/{production}', 'ProductionController@destroy')->name('production.destroy');
            });

            $this->group(['prefix' => 'product'], function () {
                $this->get('/', 'ProductController@index')->name('product.index'); //->middleware('can:list_products'); //
                $this->get('/create', 'ProductController@create')->name('product.create');
                $this->post('/store', 'ProductController@store')->name('product.store');
                $this->get('/edit/{product}', 'ProductController@edit')->name('product.edit');
                $this->put('/update/{product}', 'ProductController@update')->name('product.update');
                $this->get('/destroy/{product}', 'ProductController@destroy')->name('product.destroy');
            });

            $this->group(['prefix' => 'product-category'], function () {
                $this->get('/', 'ProductCategoryController@index')->name('product-category.index');
                $this->get('/create', 'ProductCategoryController@create')->name('product-category.create');
                $this->post('/store', 'ProductCategoryController@store')->name('product-category.store');
                $this->get('/edit/{product_category}', 'ProductCategoryController@edit')->name('product-category.edit');
                $this->put('/update/{product_category}', 'ProductCategoryController@update')->name('product-category.update');
                $this->get('/destroy/{product_category}', 'ProductCategoryController@destroy')->name('product-category.destroy');
            });

            $this->group(['prefix' => 'product-days'], function () {
                $this->get('/{product}', 'ProductDaysController@index')->name('product-days.index');
                $this->put('/update/{dailyChecklist}', 'ProductDaysController@update')->name('product-days.update');
            });

            $this->group(['prefix' => 'units-measure'], function () {
                $this->get('/', 'UnitsMeasureController@index')->name('units-measure.index');
                $this->get('/create', 'UnitsMeasureController@create')->name('units-measure.create');
                $this->post('/store', 'UnitsMeasureController@store')->name('units-measure.store');
                $this->get('/edit/{units_measure}', 'UnitsMeasureController@edit')->name('units-measure.edit');
                $this->put('/update/{units_measure}', 'UnitsMeasureController@update')->name('units-measure.update');
                $this->get('/destroy/{units_measure}', 'UnitsMeasureController@destroy')->name('units-measure.destroy');
            });

            $this->group(['prefix' => 'warehouse'], function () {
                $this->get('/', 'WarehouseController@index')->name('warehouse.index');
                $this->get('/create', 'WarehouseController@create')->name('warehouse.create');
                $this->post('/store', 'WarehouseController@store')->name('warehouse.store');
                $this->get('/edit/{warehouse}', 'WarehouseController@edit')->name('warehouse.edit');
                $this->put('/update/{warehouse}', 'WarehouseController@update')->name('warehouse.update');
                $this->get('/destroy/{warehouse}', 'WarehouseController@destroy')->name('warehouse.destroy');
            });

            $this->group(['prefix' => 'user'], function () {
                $this->get('/', 'UserController@index')->name('user.index');
                $this->get('/create', 'UserController@create')->name('user.create');
                $this->post('/store', 'UserController@store')->name('user.store');
                $this->get('/edit/{user}', 'UserController@edit')->name('user.edit');
                $this->put('/update/{user}', 'UserController@update')->name('user.update');
                $this->get('/destroy/{user}', 'UserController@destroy')->name('user.destroy');
            });

            $this->group(['prefix' => 'task'], function () {
                $this->get('/', 'TaskController@index')->name('task.index');
                $this->get('/create', 'TaskController@create')->name('task.create');
                $this->post('/store', 'TaskController@store')->name('task.store');
                $this->get('/edit/{task}', 'TaskController@edit')->name('task.edit');
                $this->put('/update/{task}', 'TaskController@update')->name('task.update');
                $this->put('/finalize/{task}', 'TaskController@finalize')->name('task.finalize');
                $this->get('/destroy/{task}', 'TaskController@destroy')->name('task.destroy');
            });

            $this->group(['namespace' => 'Acl', 'prefix' => 'acl'], function () {
                $this->group(['prefix' => 'roles'], function () {
                    $this->get('/', 'AclRoleController@index')->name('acl.role.index');
                    $this->get('/create', 'AclRoleController@create')->name('acl.role.create');
                    $this->post('/store', 'AclRoleController@store')->name('acl.role.store');
                    $this->get('/edit/{acl_role}', 'AclRoleController@edit')->name('acl.role.edit');
                    $this->put('/update/{acl_role}', 'AclRoleController@update')->name('acl.role.update');
                    $this->get('/destroy/{acl_role}', 'AclRoleController@destroy')->name('acl.role.destroy');
                });
                $this->group(['prefix' => 'permissions'], function () {
                    $this->get('/', 'AclPermissionController@index')->name('acl.permission.index');
                    $this->get('/create', 'AclPermissionController@create')->name('acl.permission.create');
                    $this->post('/store', 'AclPermissionController@store')->name('acl.permission.store');
                    $this->get('/edit/{acl_permission}', 'AclPermissionController@edit')->name('acl.permission.edit');
                    $this->put('/update/{acl_permission}', 'AclPermissionController@update')->name('acl.permission.update');
                    $this->get('/destroy/{acl_permission}', 'AclPermissionController@destroy')->name('acl.permission.destroy');
                });

                $this->group(['prefix' => 'permissions-role'], function () {
                    $this->get('/show/{acl_role}', 'AclPermissionRoleController@show')->name('acl.permission.role.show');
                    $this->put('/update/{acl_role}', 'AclPermissionRoleController@update')->name('acl.permission.role.update');
                });
            });
        });
    });
});