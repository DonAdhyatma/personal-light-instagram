<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\SettingController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    // ✅ Halaman form upload
    Route::get('/upload', [PostController::class, 'create'])->name('upload');

    // ✅ Proses simpan upload
    Route::post('/posts', [PostController::class, 'store'])->name('posts.store');

    // ✅ Halaman profile/feed post
    Route::get('/profile', function () {
        $user = auth()->user()->fresh();
        $posts = $user->posts()->latest()->get();
        return view('profile', compact('user', 'posts'));
    })->name('profile');
    
    // ✅ Edit post (caption dan file)
    Route::get('/posts/{post}/edit', [PostController::class, 'edit'])->name('posts.edit');
    Route::put('/posts/{post}', [PostController::class, 'update'])->name('posts.update');

    // Proses delete post
    Route::delete('/posts/{post}', [PostController::class, 'destroy'])->name('posts.destroy');

    // ✅ Pengelolaan profil (bawaan Laravel Breeze)
    Route::get('/profile/edit', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

     // ✅ Archive Page
    Route::get('/archive', [PostController::class, 'archive'])->name('posts.archive');
    Route::get('/archive/export/{format}', [PostController::class, 'export'])->name('posts.archive.export');

    Route::get('/settings', [SettingController::class, 'edit'])->name('settings.edit');
    Route::post('/settings', [SettingController::class, 'update'])->name('settings.update');
});

require __DIR__ . '/auth.php';
