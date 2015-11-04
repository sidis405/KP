<?php

namespace KP\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;
use KP\Models\Gallery;
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

        return view('admin.galleries.index', compact('gallery'));

    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function create(Request $request)
    // {
    //     return view('admin.galleries.create');
    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
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

        return view('admin.galleries.show', compact('gallery'));
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


        return view('admin.galleries.edit', compact('gallery'));
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
        $gallery = $this->dispatchFrom('KP\Commands\Gallery\UpdateGalleryCommand', $request);

        flash()->success('Gallery updated successfully.');

        return redirect()->to('/admin/gallery/' . $gallery->id .'/edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, GalleryRepo $gallery_repo)
    {
        $delete = $gallery_repo->remove($id);

        flash()->success('Gallery removed successfully.');

        return redirect()->to('/admin/gallery/');
    }

    public function destroyImage(Request $request, GalleryRepo $gallery_repo)
    {
        $image_id = $request->input('image_id');

        $delete = $gallery_repo->removeImage($image_id);

        return json_encode('true');
    }
}
