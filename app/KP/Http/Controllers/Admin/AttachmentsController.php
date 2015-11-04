<?php

namespace KP\Http\Controllers\Admin;

use KP\Repositories\PresRepo;
use KP\Models\Attachments;
use KP\Utils\Uploads as Up;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;

class AttachmentsController extends Controller
{

    protected $up;

    public function store(Request $request, PressRepo $press_repo)
    {

        if($request->file('file'))
        {
            $press = $press_repo->getById($request->input('press_id'));

            $this->up = new Up;

            $path = $this->up->uploadAttachment($request->file('file'));

            $press->attachments()->create([
                'name' => $request->input('name'),
                'press_id' => $request->input('press_id'),
                'path' => $path
                ]);

            flash()->success('Attachments successfully uploaded.');
            return redirect('/admin/press/' .$request->input('press_id').'/edit');
        }
        
        flash()->error('The file field is mandatory.');
        return redirect()->back();

    }

    public function delete($id)
    {
        $attachment = Attachments::find($id);

        unlink(public_path().$attachment->path);

        $attachment->delete();

        flash()->success('Attachment successfully removed.');
        return redirect()->back();
    }


}
