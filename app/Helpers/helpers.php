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