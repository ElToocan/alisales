<?php

namespace Database\Factories;

use App\Models\Vat;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $purchasePrice = $this->faker->randomFloat(2,100, 880);
        $sellingPrice = $this->faker->randomFloat(2, $purchasePrice, 1000);
        return [
            'name' => $this->faker->name(),
            'reference' => $this->faker->unique()->randomNumber(),
            'description' => $this->faker->text(),
            'purchasePrice' => $purchasePrice,
            'sellingPrice' => $sellingPrice,
            'vat_id' => Vat::inRandomOrder()->first()->id,

        ];
    }
}
