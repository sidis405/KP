<?php

function checkActivePath($path, $last = false)
{
    if( \Session::get('path') == $path)
    {
        logger('hit');

        if($last) return ' active ';

        return "class=active";
        
    }
}

function prepTitle($string, $base)
{
    if(strlen($string) > 0)
    {
        return ucfirst(
            str_replace('_', ' ', str_replace(['body_', 'pants_'], '', $string), $string)

            ) . ' | ' . $base;
    }

    return $base;
}

