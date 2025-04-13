<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    // ✅ Gunakan nama kolom yang sesuai di database
    protected $fillable = [
        'user_id',
        'post_id',
        'comment', // sebelumnya 'content', ganti jadi 'comment' agar match dengan kolom database
    ];

    // Relasi ke user yang mengomentari
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Relasi ke post yang dikomentari
    public function post()
    {
        return $this->belongsTo(Post::class);
    }
}
