<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class UniqProductAndDate implements Rule
{
    private $table;
    private $product_id;
    private $id;

    /**
     * Create a new rule instance.
     *
     * @param $table
     * @param $product
     * @param $id
     */
    public function __construct($table, $product_id, $id = null)
    {
        $this->table      = $table;
        $this->product_id = $product_id;
        $this->id         = $id;
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     *
     * @return bool
     */
    public function passes($attribute, $value)
    {
        $res = \DB::table($this->table)->where([
            $attribute   => $value,
            'product_id' => $this->product_id,
        ]);

        if (! is_null($this->id)) {
            $res->whereNotIn('id', [$this->id]);
        }

        $result = $res->get();

        return count($result) ? false : true;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Encontrado outro registro com este producto e esta data.';
    }
}
