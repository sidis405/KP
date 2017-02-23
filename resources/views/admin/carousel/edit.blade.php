@extends('admin.layouts.master')

@section('header_extras')

<meta name="_token" content="{{ csrf_token() }}" />

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.0.1/dropzone.css">
<link rel="stylesheet" type="text/css" href="/adm/styles/image-picker.css">
<link rel="stylesheet" type="text/css" href="/adm/styles/magnific-popup.css">

@stop

@section('content')

@include('admin.layouts.toolbar')

  <section class="main">
      <div class="container">           
        <h1>Edit Carousel Item</h1>
        <h2>In this section you may edit a carousel item.</h2>

        @include('layouts.errors')
        @include('flash::message')
        <form action="/admin/carousel/{{ $carousel->id }}" method="POST" id="album_editing_form" enctype="multipart/form-data">
        <input type="hidden" name="carousel_id" value="{{ $carousel->id }}">
        <input type="hidden" id="cover_image_persisted" value="{{ $carousel->cover_image_id }}">
        <input type="hidden" name="cover_image_id" id="cover_image_id" value="{{ $carousel->cover_image_id }}">
        {{csrf_field()}}
            <div class="card card-add-project">
  
              <div class="card-body">
                  <div class="row">
                    <div class="col-md-12 centered">
                      <h3>Cover Image (1170x650px)</h3>
                        <div class="form-group"><div id="isCarousel" data-value="true"></div>
                          <a id="cover_image_preview">
                              <div class="thumbnail-preview-add thumbnail-preview-add-cover thumbnail-preview-add-cover-carousel" @if($carousel->cover_image_id > 0) style="background: url('/uploads/{{$carousel->coverImage->id}}/{{$carousel->coverImage->file_name}}?w=1170&h=420&fit=crop') no-repeat center center;" @endif >
                                <div class="btn">Choose a cover image</div>
                              </div>
                          </a>
                        </div>
                    </div>
                    
                  </div>
              </div>

            </div>
            
        </form>
        <br>

      
      @include('admin.gallery.gallery-section', array('model' => $carousel, 'model_name' => 'carousel', 'model_route' => 'carousel'))
      <div class="centered">
              <button id="toolbar-save-form" class="btn btn-green">Save</button>
              <a href="/admin/carousel" class="btn btn-orange">Reset</a>
            </div>
        </div>

      </div>

      <form method="POST" action="/admin/carousel/{{ $carousel->id }}/remove" id="album_deletion_form">
                        {{ csrf_field() }} </form>

    </section>
    @stop

@section('footer_extras')

<script type="text/javascript" src="/adm/scripts/dropzone-bindings.js"></script>
<script type="text/javascript" src="/adm/scripts/image-picker.min.js"></script>
<script type="text/javascript" src="/adm/scripts/jquery.magnific-popup.min.js"></script>

<script type="text/javascript">
    
    $("#cover_image_id_field").imagepicker({limit: 1});

    function doMagnificPopup () {
    $('.gallery-item').magnificPopup({
      type: 'image',
      gallery:{
        enabled:true
      }
    });
}

doMagnificPopup();



</script>

@stop