<?php

namespace App\Rules;

use App\Models\Product;
use Illuminate\Contracts\Validation\Rule;

class ChecklistProductTotalRule implements Rule
{
    private $messageError;
    /**
     * @var Product
     */
    private $product;

    /**
     * ChecklistProductTotalRule constructor.
     *
     * @param $productId
     */
    public function __construct($productId)
    {
        $this->product = Product::query()->where('active', 1)->find($productId);
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
        if (is_null($this->product)) {
            $this->messageError = "Produto não encontrado.";

            return false;
        }

        $quantities = arrayFilter($value);

        if (count($quantities)) {
            $total = array_sum($quantities);
            if ($total > $this->product->current_quantity) {
                $this->messageError = "Atualmente o produto '{$this->product->name}' está declarado '{$this->product->current_quantity} {$this->product->unitsMeasure->symbol}' e o valor informado foi '{$total} {$this->product->unitsMeasure->symbol}'.";

                return false;
            }
        }

        return true;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return $this->messageError;
    }
}
