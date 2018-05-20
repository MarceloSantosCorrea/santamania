<?php

use Illuminate\Support\Debug\Dumper;

function getStatus($status)
{
    return $status ? 'Ativo' : 'Desativado';
}

function getStatusChecklist($status)
{
    return $status ? 'Aberto' : 'Fechado';
}

function filterHtmlScape($string)
{
    $string = str_replace("'", "\'", $string);

    return $string;
}

function getKeyDaysOfTheWeek($day)
{
    $segQui = [1, 2, 3, 4];
    $sexDom = [0, 5];
    $sabFer = [6];

    if (in_array($day, $segQui))
        return 0;

    if (in_array($day, $sexDom))
        return 1;

    if (in_array($day, $sabFer))
        return 2;
}

if (!function_exists('arrayToString')) {
    function arrayToString(Array $array = null)
    {
        if (!is_null($array))
            return implode(', ', arrayMapAssoc(function ($k, $v) {

                if (is_array($v)) {
                    return arrayToString($v);
                }

                if (is_string($v))
                    return "$k = $v";

            }, $array));

        return '';
    }
}

if (!function_exists('arrayMapAssoc')) {
    function arrayMapAssoc($callback, $array)
    {
        $r = [];
        foreach ($array as $key => $value)
            $r[$key] = $callback($key, $value);

        return $r;
    }
}

