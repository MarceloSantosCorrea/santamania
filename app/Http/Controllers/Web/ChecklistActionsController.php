<?php

namespace App\Http\Controllers\Web;

use App\Models\Checklist;

class ChecklistActionsController extends AbstractController
{
    public function close(Checklist $checklist)
    {
        $result = $checklist->closeChecklist($checklist);

        if ($result['success'] == true)
            return redirect()
                ->route('web.checklist.index')
                ->with('success', 'Salvo com sucesso');

        return redirect()
            ->route('web.checklist.index')
            ->with('error', $result['message']);
    }
}
