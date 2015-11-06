<?php

namespace KP\Models;

use Illuminate\Database\Eloquent\Model;
use Laracasts\Presenter\PresentableTrait;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;
use Spatie\MediaLibrary\HasMedia\Interfaces\HasMedia;
use \Rutorika\Sortable\SortableTrait;

class Press extends Model implements HasMedia
{
    use PresentableTrait, HasMediaTrait, SortableTrait;

    protected $presenter = 'KP\Presenters\PressPresenter';
    protected $table = 'press';

    public static function make()
    {
        $item = new static();

        return $item;
    }

    public static function edit($item_id, $cover_image_id, $path)
    {
        $item = static::find($item_id);

        $item->cover_image_id = $cover_image_id;
        $item->path = $path;

        return $item;
    }

    public function attachments(){

        return $this->hasMany('KP\Models\Attachments', 'album_id');

    }

      public function coverImage()
    {
        return $this->belongsTo('KP\Models\FeaturedImage', 'cover_image_id');
    }



}
