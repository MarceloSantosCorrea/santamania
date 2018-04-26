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

if (! function_exists('md')) {
    /**
     * Dump the passed variables and end the script.
     *
     * @param  mixed  $args
     * @return void
     */
    function md(...$args)
    {
        http_response_code(500);

        foreach ($args as $x) {
            (new Dumper)->dump($x);
        }
        }
}