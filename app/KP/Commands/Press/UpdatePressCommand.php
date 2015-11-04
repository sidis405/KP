<?php

namespace KP\Commands\Press;

use KP\Commands\Command;

class UpdatePressCommand extends Command
{

    public $cover_image_id;
    public $path;
    public $press_id;
    public $attachment;

    /**
     * Update a command instance.
     *
     * @return void
     */
    public function __construct($cover_image_id, $path, $press_id, $attachment = false)
    {
        $this->cover_image_id = $cover_image_id;
        $this->path = $path;
        $this->press_id = $press_id;
        $this->attachment = $attachment;
    }
}
