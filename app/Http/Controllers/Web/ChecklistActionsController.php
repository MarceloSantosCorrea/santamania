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
}
