<?php

Auth::routes();

$this->group(['middleware' => ['auth']], function () {
    $this->group(['namespace' => 'Web'], function () {
        $this->resources([
            '/checklist-product'            => 'ChecklistProductController',
            '/checklist-warehouse-quantity' => 'ChecklistWarehouseQuantityController',
        ]);

        $this->get('/', 'IndexController@index')->name('home');
        $this->get('/logout', 'IndexController@logout')->name('logout');

        $this->group(['prefix' => 'checklist-actions'], function () {
            $this->get('close', 'ChecklistActionsController@close');
        });

        $this->group(['prefix' => 'checklist'], function () {
            $this->get('/', 'ChecklistController@index')->name('web.checklist.index');
            $this->get('/create', 'ChecklistController@create')->name('web.checklist.create');
            $this->post('/store', 'ChecklistController@store')->name('web.checklist.store');
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
            $this->get('/', 'ProductController@index')->name('web.product.index');
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
    });
});