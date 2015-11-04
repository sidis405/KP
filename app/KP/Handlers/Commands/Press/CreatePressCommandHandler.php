<?php

namespace KP\Handlers\Commands\Press;

use KP\Commands\CreatePressCommand;
use KP\Models\Press;
use Illuminate\Queue\InteractsWithQueue;
use KP\Repositories\PressRepo;
use KP\Events\Press\PressWasCreated;
use Events;


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
        $press_object = Press::make(
            $command->cover_photo_id,
        $command->path
            );

        $press = $this->repo->save($press_object);

        Event::fire(new PressWasCreated($press));

        return $press;

    }
}
