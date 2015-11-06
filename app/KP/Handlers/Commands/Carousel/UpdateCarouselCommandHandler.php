<?php

namespace KP\Handlers\Commands\Carousel;

use Event;
use Illuminate\Queue\InteractsWithQueue;
use KP\Commands\CreateTestCommand;
use KP\Commands\Carousel\UpdateCarouselCommand;
use KP\Events\Carousel\CarouselWasUpdated;
use KP\Models\Carousel;
use KP\Repositories\CarouselRepo;


class UpdateCarouselCommandHandler
{
    public $repo;

    /**
     * Create the command handler.
     *
     * @return void
     */
    public function __construct(CarouselRepo $repo)
    {
        $this->repo = $repo;
    }

    /**
     * Handle the command.
     *
     * @param  UpdateCarouselCommand  $command
     * @return void
     */
    public function handle(UpdateCarouselCommand $command)
    {


        $carousel_object = Carousel::edit(
            $command->carousel_id,
            $command->cover_image_id
            );

        $carousel = $this->repo->save($carousel_object);

        Event::fire(new CarouselWasUpdated($carousel));

        return $carousel;
    }
}
