<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'post_id',
    ];

    // Relasi ke user yang menyukai
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Relasi ke post yang disukai
    public function post()
    {
        return $this->belongsTo(Post::class);
    }
}
