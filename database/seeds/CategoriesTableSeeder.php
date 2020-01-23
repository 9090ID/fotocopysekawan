<?php

use Illuminate\Database\Seeder;
use App\Models\Category;

class CategoriesTableSeeder extends Seeder
{
    public function run()
    {
        Category::create([
            'name' => 'Makanan',
            'slug' => 'makanan',
            'description' => 'kategori makanan'
        ]);

        Category::create([
            'name' => 'Minuman',
            'slug' => 'minuman',
            'description' => 'kategori minuman'
        ]);
    }
}
