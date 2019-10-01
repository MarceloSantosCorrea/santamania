<?php

namespace App\Providers;

use App\Models\Checklist;
use App\Models\ChecklistProduct;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\Production;
use App\Models\User;
use App\Models\Warehouse;
use App\Observers\ChecklistObserver;
use App\Observers\ChecklistProductObserver;
use App\Observers\ProductCategoryObserver;
use App\Observers\ProductionObserver;
use App\Observers\ProductObserver;
use App\Observers\UserObserver;
use App\Observers\WarehouseObserver;
use Illuminate\Support\ServiceProvider;
use Laravel\Passport\Passport;

class AppServiceProvider extends ServiceProvider
{
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

        \App::bind('logs', function () {
            return new \App\Helpers\Logs();
        });
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Passport::routes();
        /*
         * Observables
         */
        User::observe(UserObserver::class);
        Warehouse::observe(WarehouseObserver::class);
        ProductCategory::observe(ProductCategoryObserver::class);
        Product::observe(ProductObserver::class);
        Production::observe(ProductionObserver::class);
        Checklist::observe(ChecklistObserver::class);
        ChecklistProduct::observe(ChecklistProductObserver::class);
    }
}
