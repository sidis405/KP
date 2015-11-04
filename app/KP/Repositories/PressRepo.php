<?php

namespace KP\Repositories;

use KP\Models\FeaturedImage;
use KP\Models\Press;

class PressRepo
{

    public function save(Press $press)
    {
        $press->save();

        return $press;
    }

    public function remove($id)
    {
        $activity = Press::find($id);
        $activity->delete();

        return true;
    }

    public function getAll()
    {
        return Press::all();
    } 

    public function getAllFront()
    {
        return Press::with('coverImage')->where('cover_image_id', '>', 0)->get();
    } 

    public function getById($id)
    {
        return Press::where('id', $id)->first();
    } 




    public function getBySlug($slug)
    {
        return Press::where('slug', $slug)->first();
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
