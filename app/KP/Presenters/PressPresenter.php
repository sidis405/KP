<?php

namespace KP\Presenters;

use Laracasts\Presenter\Presenter;

class PressPresenter extends Presenter
{
    public function featuredImageUrl()
    {
        if ($this->featuredImage) {
            return "/image/" . $this->coverImage->id ."/". $this->coverImage->file_name;
        }

    }
}
