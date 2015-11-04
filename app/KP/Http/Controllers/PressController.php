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
        $press = $press_repo->getAllFront();

        // return $press;
        
        \Session::put('path', 'press');
        $title = prepTitle('press', 'Kastner &amp; Pallavicino');

        return view('press.index', compact('press', 'title'));

    }


}
