<?php

namespace KP\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use KP\Repositories\PressRepo;


class PressController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(PressRepo $press_repo)
    {
        $press = $press_repo->getAll();

        return view('admin.press.index', compact('press'));

    }


 

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $press = $this->dispatchFrom('KP\Commands\Press\CreatePressCommand', $request);
        
        return redirect()->to('/admin/press/' . $press->id .'/edit');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, PressRepo $press_repo)
    {
        $press = $press_repo->getById($id);

        return view('admin.press.show', compact('press'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id, PressRepo $press_repo)
    {
        $press = $press_repo->getById($id);

        return view('admin.press.edit', compact('press'));
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
        $press = $this->dispatchFrom('KP\Commands\Press\UpdatePressCommand', $request);

        flash()->success('Press area updated successfully.');

        return redirect()->to('/admin/press/' . $press->id .'/edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, PressRepo $press)
    {
        $delete = $press->remove($id);

        flash()->success('Press item removed successfully.');

        return redirect()->to('/admin/press/');
    }

    public function destroyImage(Request $request, PressRepo $press_repo)
    {
        $image_id = $request->input('image_id');

        $delete = $press_repo->removeImage($image_id);

        return json_encode('true');
    }
}
