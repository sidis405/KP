<?php

namespace KP\Handlers\Commands\Gallery;

use Event;
use Illuminate\Queue\InteractsWithQueue;
use KP\Commands\Gallery\CreateTestCommand;
use KP\Commands\Gallery\UpdateGalleryCommand;
use KP\Events\Gallery\GalleryWasUpdated;
use KP\Models\Gallery;
use KP\Repositories\GalleryRepo;


class UpdateGalleryCommandHandler
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
     * @param  UpdateGalleryCommand  $command
     * @return void
     */
    public function handle(UpdateGalleryCommand $command)
    {
        $gallery_object = Gallery::edit(
            $command->gallery_id,
            $command->featured_image_id,
        $command->cover_image_id
            );

        $gallery = $this->repo->save($gallery_object);

        Event::fire(new GalleryWasUpdated($gallery));

        return $gallery;
    }
}
