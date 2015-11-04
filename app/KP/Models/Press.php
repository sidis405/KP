<?php

namespace KP\Models;

use Illuminate\Database\Eloquent\Model;
use Laracasts\Presenter\PresentableTrait;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;
use Spatie\MediaLibrary\HasMedia\Interfaces\HasMedia;


class Press extends Model implements HasMedia
{
    use PresentableTrait, HasMediaTrait;

    protected $presenter = 'KP\Presenters\PressPresenter';

    public static function make($cover_photo_id, $path)
    {
        $item = new static(compact('cover_photo_id', 'path'));

        return $item;
    }

    public static function edit($item_id, $cover_photo_id, $path)
    {
        $item = static::find($item_id);

        $item->cover_photo_id = $cover_photo_id;
        $item->path = $path;

        return $item;
    }

    public function attachments(){

        return $this->hasMany('KP\Models\Attachments', 'album_id');

    }



}
