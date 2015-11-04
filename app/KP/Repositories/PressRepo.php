<?php

namespace KP\Repositories;

use KP\Models\Press;

class PressRepo
{

    public function save(Press $press)
    {
        $press->save();

        return $press;
    }

    public function getAll()
    {
        return Press::all();
    } 

    public function getById($id)
    {
        return Press::where('id', $id);
    } 

    public function getBySlug($slug)
    {
        return Press::where('slug', $slug);
    } 
}
