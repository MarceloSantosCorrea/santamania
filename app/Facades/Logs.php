<?php

namespace App\Facades;

use Illuminate\Support\Facades\Facade;

class Logs extends Facade
{
    protected static function getFacadeAccessor()
    {
        return 'logs';
    }
}
