@extends('admin.layouts.master')

@section('header_extras')

<link rel="stylesheet" type="text/css" href="/styles/jquery-ui.css">
<meta name="_token" content="{{ csrf_token() }}" />

@stop

@section('content')

 @include('layouts.errors')

<section class="main">
      <div class="container">     
        @include('flash::message')
        <h1>Carousel Images</h1>
        <h2>In this section you may view the images of the homepage carousel.</h2>
        <div class="actions"><a href="/admin/carousel/create">
            <div class="btn btn-green btn-circle"><i class="fa fa-plus"></i></div></a><span>Add item     </span></div>
        <div class="card tables-card">
          <div class="card-header">
            <h2>Click on a row to modify it      </h2>
          </div>
          <div class="card-body">
            <table class="table table-responsive table-hover">
              <thead>
                <tr>
                  <td>&nbsp;</td>
                  <th>Slide Image</th>
                </tr>
              </thead>
              <tbody class="sortable" data-entityname="carousel">
              @foreach($carousel as $item)
                <tr data-itemId="{{{ $item->id }}}">
                <td class="sortable-handle"><span class="glyphicon glyphicon-sort"></span></td>
                  <td >
                    <a href="/admin/carousel/{{$item->id}}/edit"><div class="thumbnail-preview-list" @if($item->cover_image_id > 0) style="width:334px; background: url('/image/{{$item->coverImage->id}}/{{$item->coverImage->file_name}}?w=334&h=120&fit=crop') no-repeat center center;" @endif ></div></a>
                  </td>
                </tr>
              @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </section>

  @stop
  
@section('footer_extras')

<script type="text/javascript" src="/scripts/jquery-ui.min.js"></script>
<script type="text/javascript" src="/adm/scripts/sortable-bindings.js"></script>

@stop
