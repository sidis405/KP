@extends('layouts.master')

@section('title', $title)
@section('content')


        <div class="row row-press">
        
        @foreach($press as $item)

          <div class="col-md-3 col-sm-6">
            <a target="_blank" href="{{$item->path}}" class="thumbnail">
              <img src="/image/{{$item->coverImage->id}}/{{$item->coverImage->file_name}}" alt="">
             </a>
          </div>

          @endforeach
        
        </div>

@stop