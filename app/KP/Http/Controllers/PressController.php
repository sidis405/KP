<?php

namespace KP\Http\Controllers;

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

        return view('press.index', compact('press'));

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

        return view('press.show', compact('press'));
    }

}
