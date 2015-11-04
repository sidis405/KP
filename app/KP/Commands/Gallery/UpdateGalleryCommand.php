<?php

namespace KP\Commands\Gallery;

use KP\Commands\Command;

class UpdateGalleryCommand extends Command
{

    public $gallery_id;
    public $featured_image_id;
      public $cover_image_id;

    /**
     * Update a command instance.
     *
     * @return void
     */
    public function __construct($gallery_id, $featured_image_id, $cover_image_id)
    {
        $this->gallery_id = $gallery_id;
        $this->featured_image_id = $featured_image_id;
        $this->cover_image_id = $cover_image_id;
    }
}
