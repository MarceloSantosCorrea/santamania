<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ChecklistRequest;
use App\Models\Checklist;

class ChecklistController extends Controller
{
    use ControllerTrait;
    protected $model;
    protected $relationships = [
        'checklistProduct',
    ];

    public function __construct(Checklist $model)
    {
        $this->model = $model;
    }

    public function show(Checklist $checklist)
    {
        return $checklist::with($this->relationships())->find($checklist->id);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ChecklistRequest $request)
    {
        $checklist = Checklist::create($request->all());

        return Checklist::with($this->relationships())->find($checklist->id);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(ChecklistRequest $request, $id)
    {
        $checklist = Checklist::find($id);
        $checklist->update($request->all());

        return Checklist::with($this->relationships())->find($checklist->id);
    }

    public function destroy(Checklist $checklist)
    {
        $checklist->delete();

        return $checklist;
    }

}
