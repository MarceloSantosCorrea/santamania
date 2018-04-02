<?php

namespace App\Providers;

use App\Models\ProductCategory;
use App\Observers\ProductCategoryObserver;
use Laravel\Passport\Passport;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

use App\Observers\ProductObserver;
use App\Observers\UserObserver;
use App\Observers\WarehouseObserver;
use App\Observers\ChecklistWarehouseQuantityObserver;

use App\Models\Product;
use App\Models\User;
use App\Models\Warehouse;
use App\Models\ChecklistWarehouseQuantity;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Passport::routes();

        Schema::defaultStringLength(191);

        User::observe(UserObserver::class);
        Warehouse::observe(WarehouseObserver::class);
        ProductCategory::observe(ProductCategoryObserver::class);
        Product::observe(ProductObserver::class);
        ChecklistWarehouseQuantity::observe(ChecklistWarehouseQuantityObserver::class);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        if ($this->app->environment() !== 'production') {
            $this->app->register(\Barryvdh\LaravelIdeHelper\IdeHelperServiceProvider::class);
        }

        require_once __DIR__ . '/../Helpers/helpers.php';
    }
}