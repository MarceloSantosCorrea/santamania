<?php

namespace App\Http\Controllers\Web;

use App\Models\Checklist;

class ChecklistActionsController extends AbstractController
{
    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function close(Checklist $checklist)
    {
        $result = (new Checklist())->closeChecklist($checklist);

        if ($result['success'] == true)
            return redirect()
                ->route('web.checklist.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.checklist.index')
            ->with('error', $result['message']);
    }

    public function reopen(Checklist $checklist)
    {
        $checklist->fill(['status' => 1]);
        $checklist->save();

        $checklists = Checklist::where('date', '>', $checklist->date)->get();

        if ($checklists->count()) {
            foreach ($checklists as $checklist) {

                $checklist->fill(['status' => 1]);
                $checklist->save();
            }
        }

        return redirect()->route('web.checklist.index');
    }
}
