<?php

namespace KP\Presenters;

use Laracasts\Presenter\Presenter;

class GalleryPresenter extends Presenter
{
    public function slideImageUrl()
    {
        return "/image/" . $this->featuredImage->id ."/". $this->featuredImage->file_name;
    }

    public function featuredImageUrl()
    {
        if ($this->featuredImage) {
            return "/image/" . $this->coverImage->id ."/". $this->coverImage->file_name;
        }

        return "/img/activity-holder.jpg";
    }
}
