<?php

namespace KP\Models;

use Illuminate\Database\Eloquent\Model;
use Laracasts\Presenter\PresentableTrait;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;
use Spatie\MediaLibrary\HasMedia\Interfaces\HasMedia;
use \Rutorika\Sortable\SortableTrait;

class Carousel extends Model implements HasMedia
{
    use PresentableTrait, HasMediaTrait, SortableTrait;

    protected $presenter = 'KP\Presenters\CarouselPresenter';
    protected $table = 'carousel';

    public static function make()
    {
        $item = new static();

        return $item;
    }

    public static function edit($item_id, $cover_image_id)
    {
        $item = static::find($item_id);


        $item->cover_image_id = $cover_image_id;

        return $item;
    }


    public function coverImage()
    {
        return $this->belongsTo('KP\Models\FeaturedImage', 'cover_image_id');
    }



}
