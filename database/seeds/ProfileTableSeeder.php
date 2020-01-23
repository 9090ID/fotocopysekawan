<?php

use Illuminate\Database\Seeder;
use App\Models\Profile;

class ProfileTableSeeder extends Seeder
{
    public function run()
    {
       Profile::create([
            'name' => 'Nama Cafe Anda',
            'address' => 'Alamat Cafe Anda',
            'city'=> 'Nama Kota Cafe Anda',
            'phone' => 'No Telp Cafe Anda'
        ]);
    }
}
