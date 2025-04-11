<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = ['user_id', 'file_path', 'file_type', 'caption'];

    // Relasi: Setiap post dimiliki oleh satu user
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
