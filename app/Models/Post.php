<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'file_path',
        'file_type',
        'caption',
    ];

    // Relasi: Setiap post dimiliki oleh satu user
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Relasi: Setiap post bisa memiliki banyak like
    public function likes()
    {
        return $this->hasMany(Like::class);
    }

    // Relasi: Setiap post bisa memiliki banyak komentar
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
}
