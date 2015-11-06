<?php

namespace KP\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use KP\Repositories\CarouselRepo;


class CarouselController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(CarouselRepo $carousel_repo)
    {
        $carousel = $carousel_repo->getAll();

        return view('admin.carousel.index', compact('carousel'));

    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $carousel = $this->dispatchFrom('KP\Commands\Carousel\CreateCarouselCommand', $request);
        
        return redirect()->to('/admin/carousel/' . $carousel->id .'/edit');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, CarouselRepo $carousel_repo)
    {
        $carousel = $carousel_repo->getById($id);

        return view('admin.carousel.show', compact('carousel'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id, CarouselRepo $carousel_repo)
    {
        $carousel = $carousel_repo->getById($id);

        return view('admin.carousel.edit', compact('carousel'));
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
        $carousel = $this->dispatchFrom('KP\Commands\Carousel\UpdateCarouselCommand', $request);

        flash()->success('Carousel area updated successfully.');

        return redirect()->to('/admin/carousel/' . $carousel->id .'/edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, CarouselRepo $carousel)
    {
        $delete = $carousel->remove($id);

        flash()->success('Carousel item removed successfully.');

        return redirect()->to('/admin/carousel/');
    }

    public function destroyImage(Request $request, CarouselRepo $carousel_repo)
    {
        $image_id = $request->input('image_id');

        $delete = $carousel_repo->removeImage($image_id);

        return json_encode('true');
    }
}
