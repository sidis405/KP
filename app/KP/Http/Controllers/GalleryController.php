<?php

namespace KP\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use KP\Repositories\GalleryRepo;


class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(GalleryRepo $gallery_repo)
    {
        $gallery = $gallery_repo->getAll();

        return view('gallery.index', compact('gallery'));

    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, GalleryRepo $gallery_repo)
    {
        $gallery = $gallery_repo->getById($id);

        return view('gallery.show', compact('gallery'));
    }

}
