<?php

namespace KP\Handlers\Commands\Carousel;

use KP\Commands\Carousel\CreateCarouselCommand;
use KP\Models\Carousel;
use Illuminate\Queue\InteractsWithQueue;
use KP\Repositories\CarouselRepo;
use KP\Events\Carousel\CarouselWasCreated;
use Event;


class CreateCarouselCommandHandler
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
     * @param  CreateCarouselCommand  $command
     * @return void
     */
    public function handle(CreateCarouselCommand $command)
    {
        $carousel_object = Carousel::make();

        $carousel = $this->repo->save($carousel_object);

        Event::fire(new CarouselWasCreated($carousel));

        return $carousel;

    }
}
