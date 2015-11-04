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
    protected $table = 'gallery';

    public static function make()
    {
        $item = new static();

        return $item;
    }

    public static function edit($item_id, $featured_image_id, $cover_image_id)
    {
        $item = static::find($item_id);

        $item->featured_image_id = $featured_image_id;
        $item->cover_image_id = $cover_image_id;

        return $item;
    }

   public function featuredImage()
    {
        return $this->belongsTo('KP\Models\FeaturedImage', 'featured_image_id');
    }

    public function coverImage()
    {
        return $this->belongsTo('KP\Models\FeaturedImage', 'cover_image_id');
    }



}
