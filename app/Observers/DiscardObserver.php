<?php

namespace App\Observers;

use App\Models\Discard;

class DiscardObserver
{
    /**
     * @param  Discard  $discard
     */
    public function created(Discard $discard)
    {
        \Logs::database(
            'Discard',
            auth()->user()->name." adicionou entrada ao descarte: `#{$discard->id}` - {$discard->product->name} ".json_encode($discard->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }

    /**
     * @param  Discard  $discard
     */
    public function updated(Discard $discard)
    {
        $original = $discard->getOriginal();
        $changes  = $discard->getChanges();
        unset($changes["updated_at"]);
        $inputs = [];
        if (count($changes)) {
            foreach ($changes as $key => $val) {
                $inputs[$key] = [isset($original[$key]) ? $original[$key] : null => $val];
            }
        }

        if (count($inputs)) {
            \Logs::database(
                'Discard',
                auth()->user()->name." alterou entrada ao descarte: Produto `#{$discard->product->id} {$discard->product->name}` ".json_encode($inputs),
                ['user_id' => auth()->user()->id]
            );
        }
    }

    /**
     * @param  Discard  $discard
     */
    public function deleted(Discard $discard)
    {
        \Logs::database(
            'Discard',
            auth()->user()->name." deletou entrada ao descarte `#{$discard->id}` Produto `#{$discard->product->id} {$discard->product->name}` ".json_encode($discard->toArray()),
            ['user_id' => auth()->user()->id]
        );
    }
}
