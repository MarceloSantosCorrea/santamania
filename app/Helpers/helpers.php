<?php

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