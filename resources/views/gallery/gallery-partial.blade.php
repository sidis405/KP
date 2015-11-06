@foreach($gallery as $item)
         <div class="col-md-4 col-sm-6 single-gallery">
          <a href="/uploads/{{$item->featuredImage->id}}/{{$item->featuredImage->file_name}}" class="thumbnail">
            <img src="/uploads/{{$item->coverImage->id}}/{{$item->coverImage->file_name}}" alt="...">
          </a>
         </div>
        @endforeach

