<?php

Auth::routes();

$this->group(['middleware' => ['auth']], function () {
    $this->group(['namespace' => 'Web'], function () {

        $this->get('/', 'IndexController@index')->name('home');
        $this->get('/logout', 'IndexController@logout')->name('logout');

        $this->get('/profile', 'UserController@profile')->name('web.user.profile');
        $this->put('/profile', 'UserController@updateProfile')->name('web.user.updateProfile');

        $this->group(['prefix' => 'checklist-actions'], function () {
            $this->patch('{checklist}/close', 'ChecklistActionsController@close')->name('web.checklist-actions.close');
            $this->get('{checklist}/reopen', 'ChecklistActionsController@reopen')->name('web.checklist-actions.reopen');
        });

        $this->group(['prefix' => 'checklist-totals'], function () {
            $this->get('{checklist}', 'ChecklistTotalController@index')->name('web.checklist-totals.index');
        });

        $this->group(['prefix' => 'checklist-product'], function () {
            $this->get('/create/{checklist}/{product}', 'ChecklistProductController@create')->name('web.checklist-product.create');
            $this->post('/store', 'ChecklistProductController@store')->name('web.checklist-product.store');
            $this->get('/edit/{checklist}/{product}', 'ChecklistProductController@edit')->name('web.checklist-product.edit');
            $this->put('/update/{checklistProduct}', 'ChecklistProductController@update')->name('web.checklist-product.update');
            $this->get('/destroy/{checklist}/{product}', 'ChecklistProductController@destroy')->name('web.checklist-product.destroy');
        });

        $this->group(['prefix' => 'checklist'], function () {
            $this->get('/', 'ChecklistController@index')->name('web.checklist.index');
            $this->get('/create', 'ChecklistController@create')->name('web.checklist.create');
            $this->post('/store', 'ChecklistController@store')->name('web.checklist.store');
            $this->get('/show/{checklist}', 'ChecklistController@show')->name('web.checklist.show');
            $this->get('/edit/{checklist}', 'ChecklistController@edit')->name('web.checklist.edit');
            $this->put('/update/{checklist}', 'ChecklistController@update')->name('web.checklist.update');
            $this->get('/destroy/{checklist}', 'ChecklistController@destroy')->name('web.checklist.destroy');
        });

        $this->group(['prefix' => 'production'], function () {
            $this->get('/', 'ProductionController@index')->name('web.production.index');
            $this->get('/create', 'ProductionController@create')->name('web.production.create');
            $this->post('/store', 'ProductionController@store')->name('web.production.store');
            $this->get('/edit/{production}', 'ProductionController@edit')->name('web.production.edit');
            $this->put('/update/{production}', 'ProductionController@update')->name('web.production.update');
            $this->get('/destroy/{production}', 'ProductionController@destroy')->name('web.production.destroy');
        });

        $this->group(['prefix' => 'product'], function () {
            $this->get('/', 'ProductController@index')->name('web.product.index'); //->middleware('can:list_products'); //
            $this->get('/create', 'ProductController@create')->name('web.product.create');
            $this->post('/store', 'ProductController@store')->name('web.product.store');
            $this->get('/edit/{product}', 'ProductController@edit')->name('web.product.edit');
            $this->put('/update/{product}', 'ProductController@update')->name('web.product.update');
            $this->get('/destroy/{product}', 'ProductController@destroy')->name('web.product.destroy');
        });

        $this->group(['prefix' => 'product-category'], function () {
            $this->get('/', 'ProductCategoryController@index')->name('web.product-category.index');
            $this->get('/create', 'ProductCategoryController@create')->name('web.product-category.create');
            $this->post('/store', 'ProductCategoryController@store')->name('web.product-category.store');
            $this->get('/edit/{product_category}', 'ProductCategoryController@edit')->name('web.product-category.edit');
            $this->put('/update/{product_category}', 'ProductCategoryController@update')->name('web.product-category.update');
            $this->get('/destroy/{product_category}', 'ProductCategoryController@destroy')->name('web.product-category.destroy');
        });

        $this->group(['prefix' => 'units-measure'], function () {
            $this->get('/', 'UnitsMeasureController@index')->name('web.units-measure.index');
            $this->get('/create', 'UnitsMeasureController@create')->name('web.units-measure.create');
            $this->post('/store', 'UnitsMeasureController@store')->name('web.units-measure.store');
            $this->get('/edit/{units_measure}', 'UnitsMeasureController@edit')->name('web.units-measure.edit');
            $this->put('/update/{units_measure}', 'UnitsMeasureController@update')->name('web.units-measure.update');
            $this->get('/destroy/{units_measure}', 'UnitsMeasureController@destroy')->name('web.units-measure.destroy');
        });

        $this->group(['prefix' => 'warehouse'], function () {
            $this->get('/', 'WarehouseController@index')->name('web.warehouse.index');
            $this->get('/create', 'WarehouseController@create')->name('web.warehouse.create');
            $this->post('/store', 'WarehouseController@store')->name('web.warehouse.store');
            $this->get('/edit/{warehouse}', 'WarehouseController@edit')->name('web.warehouse.edit');
            $this->put('/update/{warehouse}', 'WarehouseController@update')->name('web.warehouse.update');
            $this->get('/destroy/{warehouse}', 'WarehouseController@destroy')->name('web.warehouse.destroy');
        });

        $this->group(['prefix' => 'user'], function () {
            $this->get('/', 'UserController@index')->name('web.user.index');
            $this->get('/create', 'UserController@create')->name('web.user.create');
            $this->post('/store', 'UserController@store')->name('web.user.store');
            $this->get('/edit/{user}', 'UserController@edit')->name('web.user.edit');
            $this->put('/update/{user}', 'UserController@update')->name('web.user.update');
            $this->get('/destroy/{user}', 'UserController@destroy')->name('web.user.destroy');
        });

        $this->group(['prefix' => 'task'], function () {
            $this->get('/', 'TaskController@index')->name('web.task.index');
            $this->get('/create', 'TaskController@create')->name('web.task.create');
            $this->post('/store', 'TaskController@store')->name('web.task.store');
            $this->get('/edit/{task}', 'TaskController@edit')->name('web.task.edit');
            $this->put('/update/{task}', 'TaskController@update')->name('web.task.update');
            $this->put('/finalize/{task}', 'TaskController@finalize')->name('web.task.finalize');
            $this->get('/destroy/{task}', 'TaskController@destroy')->name('web.task.destroy');
        });

        $this->group(['namespace' => 'Acl', 'prefix' => 'acl'], function () {
            $this->group(['prefix' => 'roles'], function () {
                $this->get('/', 'AclRoleController@index')->name('web.acl.role.index');
                $this->get('/create', 'AclRoleController@create')->name('web.acl.role.create');
                $this->post('/store', 'AclRoleController@store')->name('web.acl.role.store');
                $this->get('/edit/{acl_role}', 'AclRoleController@edit')->name('web.acl.role.edit');
                $this->put('/update/{acl_role}', 'AclRoleController@update')->name('web.acl.role.update');
                $this->get('/destroy/{acl_role}', 'AclRoleController@destroy')->name('web.acl.role.destroy');
            });
            $this->group(['prefix' => 'permissions'], function () {
                $this->get('/', 'AclPermissionController@index')->name('web.acl.permission.index');
                $this->get('/create', 'AclPermissionController@create')->name('web.acl.permission.create');
                $this->post('/store', 'AclPermissionController@store')->name('web.acl.permission.store');
                $this->get('/edit/{acl_permission}', 'AclPermissionController@edit')->name('web.acl.permission.edit');
                $this->put('/update/{acl_permission}', 'AclPermissionController@update')->name('web.acl.permission.update');
                $this->get('/destroy/{acl_permission}', 'AclPermissionController@destroy')->name('web.acl.permission.destroy');
            });

            $this->group(['prefix' => 'permissions-role'], function () {
                $this->get('/show/{acl_role}', 'AclPermissionRoleController@show')->name('web.acl.permission.role.show');
                $this->put('/update/{acl_role}', 'AclPermissionRoleController@update')->name('web.acl.permission.role.update');
            });
        });
    });
});