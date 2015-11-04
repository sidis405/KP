<?php

namespace KP\Models;

use Illuminate\Database\Eloquent\Model;
use Laracasts\Presenter\PresentableTrait;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;
use Spatie\MediaLibrary\HasMedia\Interfaces\HasMedia;


class Gallery extends Model implements HasMedia
{
    use PresentableTrait, HasMediaTrait;

    protected $presenter = 'KP\Presenters\GalleryPresenter';

    public static function make($featured_photo_id, $cover_photo_id)
    {
        $item = new static(compact('featured_photo_id', 'cover_photo_id'));

        return $item;
    }

    public static function edit($item_id, $featured_photo_id, $cover_photo_id)
    {
        $item = static::find($item_id);

        $item->featured_photo_id = $featured_photo_id;
        $item->cover_photo_id = $cover_photo_id;

        return $item;
    }

    public function photos(){

        return $this->hasMany('KP\Models\Photos', 'album_id');

    }



}
