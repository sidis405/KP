<?php

namespace KP\Handlers\Commands\Press;

use KP\Commands\Press\CreatePressCommand;
use KP\Models\Press;
use Illuminate\Queue\InteractsWithQueue;
use KP\Repositories\PressRepo;
use KP\Events\Press\PressWasCreated;
use Event;


class CreatePressCommandHandler
{
    public $repo;

    /**
     * Create the command handler.
     *
     * @return void
     */
    public function __construct(PressRepo $repo)
    {
        $this->repo = $repo;
    }

    /**
     * Handle the command.
     *
     * @param  CreatePressCommand  $command
     * @return void
     */
    public function handle(CreatePressCommand $command)
    {
        $press_object = Press::make();

        $press = $this->repo->save($press_object);

        Event::fire(new PressWasCreated($press));

        return $press;

    }
}
