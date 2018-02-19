<?php

namespace App\Models;

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
        'firstname', 'lastname', 'email', 'password', 'level',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

//    public function save(array $options = [])
//    {
//        $options['name']     = "{$options['firstname']} {$options['lastname']}";
//        $options['password'] = bcrypt($options['password']);
//        $options['active']   = $options['active'] == 'on' ? 1 : 0;
//
//        return $this->save($options);
//    }

}