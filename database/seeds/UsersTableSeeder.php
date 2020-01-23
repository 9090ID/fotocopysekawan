<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{

    public function run()
    {
        $owner = User::create([
            'name' => 'Rio Aditya',
            'email' => 'rioaditya92@gmail.com',
            'password' => bcrypt('123456'),
        ]);

        $owner->assignRole('owner');
        $owner = User::create([
            'name' => 'Muhammad Farhan',
            'email' => 'farhan@unja.ac.id',
            'password' => bcrypt('farhan2020'),
        ]);

        $owner->assignRole('owner');
        $owner = User::create([
            'name' => 'Adi Syapriyanto',
            'email' => 'adisyapriyanto@yahoo.com',
            'password' => bcrypt('adi2020'),
        ]);

        $owner->assignRole('owner');
        $owner = User::create([
            'name' => 'Ayu',
            'email' => 'ayu@gmail.com',
            'password' => bcrypt('ayu2020'),
        ]);

        $owner->assignRole('owner');
        $owner = User::create([
            'name' => 'Satria',
            'email' => 'satria@gmail.com',
            'password' => bcrypt('satria2020'),
        ]);

        $owner->assignRole('owner');

        $kasir = User::create([
            'name' => 'Sintia Sari',
            'email' => 'sintiasari@gmail.com',
            'password' => bcrypt('123456'),
        ]);

        $kasir->assignRole('kasir');
        $kasir = User::create([
            'name' => 'Ayu',
            'email' => 'ayu_kasir@gmail.com',
            'password' => bcrypt('ayu2020'),
        ]);

        $kasir->assignRole('kasir');
        $kasir = User::create([
            'name' => 'Adi Syapriyanto',
            'email' => 'adisyapriyanto_kasir@yahoo.com',
            'password' => bcrypt('adi2020'),
        ]);

        $kasir->assignRole('kasir');
        $kasir = User::create([
            'name' => 'M. Farhan',
            'email' => 'farhan_kasir@unja.ac.id',
            'password' => bcrypt('farhan2020'),
        ]);

        $kasir->assignRole('kasir');
    }
}
