<?php

namespace App\Providers;

use App\Models\Acl\AclPermission;
use App\Models\User;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        if (\Schema::hasTable('acl_permissions')) {
            $aclPermissions = AclPermission::with('roles')->get();

            foreach ($aclPermissions as $aclPermission) {

                Gate::define($aclPermission->name, function (User $user) use ($aclPermission) {
                    return $user->hasPermission($aclPermission);
                });
            }
        }
    }
}
