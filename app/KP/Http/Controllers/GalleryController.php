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

    public function loadMore(GalleryRepo $gallery_repo)
    {
        $gallery = $gallery_repo->getAllFront(9);

        return [
            'layout' => view('gallery.gallery-partial', compact('gallery'))->render(), 
            'url' => str_replace('/?', '?', $gallery->nextPageUrl()),
            'more' => $gallery->hasMorePages()
            ];
    }


}
