<?php

namespace KP\Commands;

use KP\Commands\Command;

class UpdatePressCommand extends Command
{

    public $cover_photo_id;
      public $path;

    /**
     * Update a command instance.
     *
     * @return void
     */
    public function __construct($cover_photo_id, $path)
    {
        $this->cover_photo_id = $cover_photo_id;
        $this->path = $path;
    }
}
