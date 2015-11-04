<?php

namespace KP\Repositories;

use KP\Models\Gallery;

class GalleryRepo
{

    public function save(Gallery $gallery)
    {
        $gallery->save();

        return $gallery;
    }

    public function getAll()
    {
        return Gallery::all();
    } 

    public function getById($id)
    {
        return Gallery::where('id', $id);
    } 

    public function getBySlug($slug)
    {
        return Gallery::where('slug', $slug);
    } 
}
