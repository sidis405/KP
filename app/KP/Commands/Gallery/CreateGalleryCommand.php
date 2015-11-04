<?php

namespace KP\Commands;

use KP\Commands\Command;

class CreateGalleryCommand extends Command
{

    public $featured_photo_id;
      public $cover_photo_id;

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct($featured_photo_id, $cover_photo_id)
    {
        $this->featured_photo_id = $featured_photo_id;
        $this->cover_photo_id = $cover_photo_id;
    }
}
