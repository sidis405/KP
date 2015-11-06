@extends('layouts.master')
@section('title', 'Kastner &amp; Pallavicino')
@section('content')

       @include('home.carousel')

        <div class="row row-mind">
          <div class="col-xs-12">
            <h2>Mind the body</h2>
            <div class="clearfix"></div>           
            
              <p>
                Kastner&amp;Pallavicino is a Roman luxury label created by Helena Kastner and Virginia Cosentini Pallavicino, in 2015.
                The idea was conceived in a small café in Rome, legendary for its regular clientele of artistic greats from the past. The concept was to create a line of bodies specifically intended as an alternative to a blouse or top. Rich in colors and using fabrics made from silk or velvet, Helena and Virginia realized that this was an essential garment lacking in modern day wardrobes. Ultimately, they designed a collection consisting of twelve bodies and to complete the beauty of the silhouette they created a pair of high wasted trousers, making the perfect blend of elegance and comfort.
              </p>

              <video width="100%" poster="/img/poster-video.jpg">
                <source src="/video/kastner-pallavicino-video.mp4" type="video/mp4">               
              </video>

              <a href="/our_philosophy.html"><div class="btn btn-primary">Read more</div></a>

              

            </div>
        </div>

    @stop