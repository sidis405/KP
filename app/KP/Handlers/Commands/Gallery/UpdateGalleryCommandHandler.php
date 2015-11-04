<?php

namespace KP\Handlers\Commands;

use KP\Commands\CreateTestCommand;
use KP\Models\Gallery;
use Illuminate\Queue\InteractsWithQueue;
use KP\Repositories\GalleryRepo;
use KP\Events\Gallery\GalleryWasUpdated;
use Events;


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
    public function handle(CreateGalleryCommand $command)
    {
        $gallery_object = Gallery::edit(
            $command->id,
            $command->featured_photo_id,
        $command->cover_photo_id
            );

        $gallery = $this->repo->save($gallery_object);

        Event::fire(new GalleryWasUpdated($gallery));

        return $gallery;
    }
}
