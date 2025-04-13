<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Post;
use App\Models\Like;
use App\Models\Comment;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Buat 5 user secara acak
        $users = User::factory(5)->create();

        // Untuk setiap user, buat 3 post
        $users->each(function ($user) {
            $user->posts()->saveMany(
                Post::factory(3)->make()
            );
        });

        $allUsers = User::all();
        $allPosts = Post::all();

        // Seed Likes - setiap post bisa disukai oleh 1-3 user random
        foreach ($allPosts as $post) {
            $randomUsers = $allUsers->random(rand(1, 3));
            foreach ($randomUsers as $user) {
                Like::create([
                    'user_id' => $user->id,
                    'post_id' => $post->id,
                ]);
            }
        }

        // Seed Comments - setiap post dikomentari oleh 1-3 user random
        foreach ($allPosts as $post) {
            $randomUsers = $allUsers->random(rand(1, 3));
            foreach ($randomUsers as $user) {
                Comment::create([
                    'user_id' => $user->id,
                    'post_id' => $post->id,
                    'comment' => fake()->sentence(4),
                ]);
            }
        }
    }
}
