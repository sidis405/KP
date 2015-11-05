<?php

namespace KP\Repositories;

use KP\Models\FeaturedImage;
use KP\Models\Gallery;

class GalleryRepo
{

    public function save(Gallery $gallery)
    {
        $gallery->save();

        return $gallery;
    }

    public function remove($id)
    {
        $activity = Gallery::find($id);
        $activity->delete();

        return true;
    }

    public function getAll()
    {
        return Gallery::all();
    } 

    public function getAllFront($howMany = 9)
    {
        return Gallery::with('coverImage', 'featuredImage')->latest()->simplePaginate($howMany);;
    } 

    public function getById($id)
    {
        return Gallery::where('id', $id)->first();
    } 

    public function getBySlug($slug)
    {
        return Gallery::where('slug', $slug)->first();
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
