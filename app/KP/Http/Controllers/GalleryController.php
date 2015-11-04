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
        $gallery = $gallery_repo->getAllFront();

        \Session::put('path', 'gallery');
        $title = prepTitle('gallery', 'Kastner &amp; Pallavicino');

        return view('gallery.index', compact('gallery', 'title'));

    }


}
