<?php

namespace KP\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use KP\Repositories\CarouselRepo;


class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(CarouselRepo $carousel_repo)
    {
        $carousel = $carousel_repo->getAllFront();

        // return $carousel;
        
        \Session::put('path', '');
        $title = prepTitle('', 'Kastner &amp; Pallavicino');

        return view('home.index', compact('carousel', 'title'));

    }


}
