<?php

namespace KP\Repositories;

use KP\Models\FeaturedImage;
use KP\Models\Carousel;

class CarouselRepo
{

    public function save(Carousel $carousel)
    {
        $carousel->save();

        return $carousel;
    }

    public function remove($id)
    {
        $activity = Carousel::find($id);
        $activity->delete();

        return true;
    }

    public function getAll()
    {
        return Carousel::orderBy('position', 'ASC')->get();
    } 

    public function getAllFront()
    {
        return Carousel::with('coverImage')->where('cover_image_id', '>', 0)->orderBy('position', 'ASC')->get();
    } 

    public function getById($id)
    {
        return Carousel::where('id', $id)->first();
    } 


    public function getBySlug($slug)
    {
        return Carousel::where('slug', $slug)->first();
    } 

    public function getMediaForId($id)
    {
        $album = $this->getById($id);
        
        return $album->getMedia();
    }

    public function removeImage($id)
    {
        $image = FeaturedImage::find($id);
        $image->delete();

        return true;
    }
}
