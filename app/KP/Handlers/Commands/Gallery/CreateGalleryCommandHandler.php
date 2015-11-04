<?php

namespace KP\Handlers\Commands\Gallery;

use KP\Commands\CreateGalleryCommand;
use KP\Models\Gallery;
use Illuminate\Queue\InteractsWithQueue;
use KP\Repositories\GalleryRepo;
use KP\Events\Gallery\GalleryWasCreated;
use Events;


class CreateGalleryCommandHandler
{
    public $repo;

    /**
     * Create the command handler.
     *
     * @return void
     */
    public function __construct(GalleryRepo $repo)
    {
        $this->repo = $repo;
    }

    /**
     * Handle the command.
     *
     * @param  CreateGalleryCommand  $command
     * @return void
     */
    public function handle(CreateGalleryCommand $command)
    {
        $gallery_object = Gallery::make(
            $command->featured_photo_id,
        $command->cover_photo_id
            );

        $gallery = $this->repo->save($gallery_object);

        Event::fire(new GalleryWasCreated($gallery));

        return $gallery;

    }
}
