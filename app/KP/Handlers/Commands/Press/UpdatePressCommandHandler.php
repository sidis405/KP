<?php

namespace KP\Handlers\Commands\Press;

use Event;
use Illuminate\Queue\InteractsWithQueue;
use KP\Commands\CreateTestCommand;
use KP\Commands\Press\UpdatePressCommand;
use KP\Events\Press\PressWasUpdated;
use KP\Models\Press;
use KP\Utils\Uploads;
use KP\Repositories\PressRepo;


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
    public function handle(UpdatePressCommand $command)
    {

        if($command->attachment){

            $up = new Uploads;
            $path = $up->uploadAttachment($command->attachment);

        }else{
            $path = $command->path;
        }


        $press_object = Press::edit(
            $command->press_id,
            $command->cover_image_id,
            $path
            );

        $press = $this->repo->save($press_object);

        Event::fire(new PressWasUpdated($press));

        return $press;
    }
}
