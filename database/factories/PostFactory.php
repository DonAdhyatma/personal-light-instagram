<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    public function definition(): array
    {
        return [
            'user_id' => User::factory(), // akan otomatis buat user kalau belum ada
            'file_path' => $this->faker->imageUrl(), // dummy url, bisa diganti ke file asli nanti
            'file_type' => 'image', // bisa random kalau mau: image/video
            'caption' => $this->faker->sentence(),
        ];
    }
}
