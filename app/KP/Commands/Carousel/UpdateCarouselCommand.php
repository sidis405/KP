<?php

namespace KP\Commands\Carousel;

use KP\Commands\Command;

class UpdateCarouselCommand extends Command
{

    public $cover_image_id;
    public $carousel_id;

    /**
     * Update a command instance.
     *
     * @return void
     */
    public function __construct($cover_image_id, $carousel_id)
    {
        $this->cover_image_id = $cover_image_id;
        $this->carousel_id = $carousel_id;
    }
}
