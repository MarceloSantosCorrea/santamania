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
        if (\Gate::allows('close_checklists')) {

            $result = (new Checklist())->closeChecklist($checklist);

            if ($result['success'] == true)
                return redirect()
                    ->back()
                    ->with('success', 'Salvo com sucesso');

            return redirect()
                ->back()
                ->with('error', $result['message']);
        }

        return view('pages.acl.unauthorized');
    }

    public function reopen(Checklist $checklist)
    {
        if (\Gate::allows('reopen_checklists')) {
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

        return view('pages.acl.unauthorized');
    }
}
