<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChecklistSector extends Model
{
    protected $fillable = ['checklist_id', 'sector_id'];

    public static function createByArray(Checklist $checklist, Array $sectors)
    {
        foreach ($sectors as $id) {
            self::query()->create([
                'checklist_id' => $checklist->id,
                'sector_id'    => $id,
            ]);
        }
    }

    public static function updateByArray(Checklist $checklist, Array $sectors)
    {
        $ids = [];
        foreach ($sectors as $id) {

            $data = [
                'checklist_id' => $checklist->id,
                'sector_id'    => $id,
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
