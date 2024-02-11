<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $faker = Faker::create();
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        // For Admin
        foreach (range(1,5) as $index) {
            DB::table('users')->insert([
                'name' => $faker->name,
                'email' => $faker->safeEmail,
                'password' => Hash::make('123456'),
            ]);
        }

        foreach (range(1,5) as $index) {
            DB::table('departments')->insert([
                'name' => $faker->name,
                'detail' => $faker->text(100),
                'img' => $faker->image('public/storage/images',100,100, 'cats', false),
            ]);
        }
    }
}
