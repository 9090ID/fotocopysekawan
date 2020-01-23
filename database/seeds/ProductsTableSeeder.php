<?php

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductsTableSeeder extends Seeder
{
    public function run()
    {
        Product::create([
            'category_id' => '1',
            'name' => 'Nasi Goreng Jawa',
            'slug' => 'nasi-goreng-jawa',
            'price' => '14000'
        ]);
        Product::create([
            'category_id' => '1',
            'name' => 'Mie Goreng Jawa',
            'slug' => 'mie-goreng-jawa',
            'price' => '14000'
        ]);
        Product::create([
            'category_id' => '2',
            'name' => 'Es Teh Manis',
            'slug' => 'es-teh-manis',
            'price' => '6000'
        ]);
        Product::create([
            'category_id' => '2',
            'name' => 'Es Jeruk',
            'slug' => 'es-jeruk',
            'price' => '7000'
        ]);
    }
}
