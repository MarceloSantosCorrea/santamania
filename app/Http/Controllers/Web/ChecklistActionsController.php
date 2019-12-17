<?php

namespace App\Http\Controllers\Web;

use App\Models\Checklist;

class ChecklistActionsController extends AbstractController
{
    /**
     * @param  Checklist  $checklist
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\View\View
     */
    public function close(Checklist $checklist)
    {
        if (\Gate::allows('close_checklists')) {

            $result = $checklist->closeChecklist();

            if ($result['success'] == true) {
                return redirect()
                    ->route('web.checklist.index')
                    ->with('success', 'Checklist finalizado com sucesso');
            }

            return redirect()
                ->back()
                ->with('error', $result['message']);
        }

        return view('pages.acl.unauthorized');
    }

    /**
     * @param  Checklist  $checklist
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\View\View
     */
    public function reopen(Checklist $checklist)
    {
        if (\Gate::allows('reopen_checklists')) {
            $result = $checklist->openChecklist();

            if ($result['success'] == true) {
                return redirect()
                    ->route('web.checklist.index')
                    ->with('success', 'Checklist aberto com sucesso');
            }

            return redirect()
                ->back()
                ->with('error', $result['message']);
        }

        return view('pages.acl.unauthorized');
    }
}
