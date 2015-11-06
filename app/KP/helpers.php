<?php

function carouselIndicators($featured)
{
    $counter = 0;
    $first = true;
    $out = '';
    $active = '';

    foreach ($featured as $media) {
        if ($first) {
            $active = 'active';
            $first=false;
        } else {
            $active = '';
        }

        $out .= '<li data-target="#slideshow" data-slide-to="' .$counter. '" class="'.$active.'"></li>';
        $counter++;
    }

    return $out;
}

function checkActivePath($path, $last = false)
{
    if( \Session::get('path') == $path)
    {

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

function formatLoadMoreUrl($input)
{
    return str_replace('/?', '/loadMoreGalleries?', $input);
}
