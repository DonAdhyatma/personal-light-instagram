<?php

namespace App\Exports;

use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class PostsExport implements FromView
{
    protected $posts;

    public function __construct($posts)
    {
        $this->posts = $posts;
    }

    public function view(): View
    {
        return view('posts.archive_excel', [
            'posts' => $this->posts
        ]);
    }
}
