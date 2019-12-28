<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChecklistFilter extends Model
{
    protected $fillable = ['checklist_id', 'filter_id'];

    public static function createByArray(Checklist $checklist, Array $filters)
    {
        foreach ($filters as $id) {
            self::query()->create([
                'checklist_id' => $checklist->id,
                'filter_id'    => $id,
            ]);
        }
    }

    public static function updateByArray(Checklist $checklist, Array $filters)
    {
        $ids = [];
        foreach ($filters as $id) {

            $data = [
                'checklist_id' => $checklist->id,
                'filter_id'    => $id,
            ];

            if ($row = self::query()->where($data)->first()) {
                $ids[] = $row->id;
            } else {
                $row = self::query()->create($data);

                $ids[] = $row->id;
            }
        }

        $deletes = self::query()->whereNotIn('id', $ids)->where(['checklist_id' => $checklist->id])->get();
        if ($deletes->count()) {
            foreach ($deletes as $delete) {
                $delete->delete();
            }
        }
    }
}
