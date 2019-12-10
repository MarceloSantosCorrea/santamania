<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use App\Models\Acl\AclPermission;
use App\Models\Acl\AclRole;
use Illuminate\Support\Collection;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        "firstname", "lastname", "email", "password", "level",
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        "password", "remember_token",
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function sectors()
    {
        return $this->belongsToMany(Sector::class, 'user_sectors', 'user_id', 'sector_id')->with('products');
    }

    public function products()
    {
        $products = [];
        foreach ($this->sectors as $sector) {
            if ($sector->products->count()) {
                foreach ($sector->products as $product) {
                    $products[] = $product;
                }
            }
        }
        dd(collect($products)->modelKeys());
        return collect($products);
    }

    public function roles()
    {
        return $this->belongsToMany(AclRole::class);
    }

    public function hasPermission(AclPermission $aclPermission)
    {
        return $this->hasAnyRoles($aclPermission->roles);
    }

    public function hasAnyRoles($roles)
    {
        if (is_array($roles) || is_object($roles)) {
            foreach ($roles as $role) {
                if ($this->roles->contains('name', $role->name)) {
                    return true;
                }
            }

            return false;
        }

        return $this->roles->contains('name', $roles);
    }

    public function setPasswordAttribute($password)
    {
        if (\Hash::needsRehash($password)) {
            $password = \Hash::make($password);
        }

        $this->attributes['password'] = $password;
    }

    public function getCreatedAtAttribute($value)
    {
        $c = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
    }

    public function getUpdatedAtAttribute($value)
    {
        $c = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $value);

        return $c->toW3cString();
    }
}
