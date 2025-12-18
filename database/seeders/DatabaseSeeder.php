<?php

namespace Database\Seeders;

use App\Models\Customer;
use App\Models\Product;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);

        User::factory(9)->create();

        \App\Models\Vat::factory()->create([
            'categorie' => 'normale',
            'rate' => 20
        ]);

        \App\Models\Vat::factory()->create([
            'categorie' => 'intermediaire',
            'rate' => 10
        ]);

        \App\Models\Vat::factory()->create([
            'categorie' => 'reduit',
            'rate' => 5.5
        ]);

        \App\Models\Vat::factory()->create([
            'categorie' => 'particulier',
            'rate' => 2.1
        ]);

        Product::factory(150)->create();

        Customer::factory(50)->create();
    }
}
