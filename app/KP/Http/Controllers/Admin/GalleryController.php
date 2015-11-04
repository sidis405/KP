<?php

namespace KP\Http\Controllers\Admin;

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

        return view('admin.gallery.index', compact('gallery'));

    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.gallery.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $gallery = $this->dispatchFrom('KP\Commands\Gallery\CreateGalleryCommand', $request);
        
        return redirect()->to('/admin/gallery/' . $gallery->id .'/edit');
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

        return view('admin.gallery.show', compact('gallery'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id, GalleryRepo $gallery_repo)
    {
        $gallery = $gallery_repo->getById($id);

        return view('admin.gallery.edit', compact('gallery'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $gallery = $this->dispatchFrom('KP\Commands\Gallery\CreateGalleryCommand', $request);

        return redirect()->to('/admin/gallery/' . $gallery->id .'/edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return Gallery::delete($id);
    }
}
