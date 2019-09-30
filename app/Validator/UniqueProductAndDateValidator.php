<?php

namespace App\Validator;

use App\Models\Production;

class UniqueProductAndDateValidator implements ValidatorInterface
{
    public function validate($attribute, $value, $parameters, $validator)
    {

        $id = isset($parameters[1]) ? $parameters[1] : null;

        $res = Production::where([
            $attribute     => $value,
            $parameters[0] => $validator->getData()['product_id'],
        ]);

        if (! is_null($id)) {
            $res->whereNotIn('id', [$id]);
        }

        $result = $res->get();

        return count($result) ? false : true;
    }
}
