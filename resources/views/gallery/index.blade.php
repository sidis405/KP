@extends('layouts.master')

@section('title', $title)
@section('content')


        <div id="load-more-galleries-url" style="display:none">{{formatLoadMoreUrl($gallery->nextPageUrl())}}</div>
       <div class="row row-gallery">
       
       @include('gallery.gallery-partial')

       </div> <!-- end of gallery -->


        @if($gallery->hasMorePages())
        <!-- <span class="load-more-activities load-more-section">Visualizza di più</span> -->

    
        <div class="remove">
          <!-- load more -->         
          <div class="btn btn-primary load-more load-more-galleries">Load More</div> 
         </div> 

        @endif
@stop