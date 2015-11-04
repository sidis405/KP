<?php

namespace KP\Handlers\Commands;

use KP\Commands\CreateTestCommand;
use KP\Models\Press;
use Illuminate\Queue\InteractsWithQueue;
use KP\Repositories\PressRepo;
use KP\Events\Press\PressWasUpdated;
use Events;


class UpdatePressCommandHandler
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
     * @param  UpdatePressCommand  $command
     * @return void
     */
    public function handle(CreatePressCommand $command)
    {
        $press_object = Press::edit(
            $command->id,
            $command->cover_photo_id,
        $command->path
            );

        $press = $this->repo->save($press_object);

        Event::fire(new PressWasUpdated($press));

        return $press;
    }
}
