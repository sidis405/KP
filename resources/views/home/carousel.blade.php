 <!-- main carousel -->
        <!-- <img class="mobile-main-img img-responsive" src="/image/{{$carousel[0]->coverImage->id}}/{{$carousel[0]->coverImage->file_name}}" alt=""> -->
        <div id="main-carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
               {!! carouselIndicators($carousel) !!}
            </ol>
            <div class="carousel-inner">
    
            <?php $first = true; ?>

            @foreach($carousel as $item)
                <div class="item <?php if ($first) { echo 'active'; } $first=false; ?>">
                    <img src="/uploads/{{$item->coverImage->id}}/{{$item->coverImage->file_name}}">
                    
                </div>
            @endforeach
            </div>
            <a class="left carousel-control" href="#main-carousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
            <a class="right carousel-control" href="#main-carousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>