<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\PostsExport;
use Barryvdh\DomPDF\Facade\Pdf;

class PostController extends Controller
{
    // Menampilkan form upload
    public function create()
    {
        return view('posts.create');
    }

    // Menyimpan post ke database dan storage
    public function store(Request $request)
    {
        // Validasi input
        $request->validate([
            'file' => 'required|file|mimes:jpg,jpeg,png,mp4,mov|max:153600', // Max 150MB
            'caption' => 'required|string|max:255',
        ]);

        // Simpan file ke storage/public/posts
        $file = $request->file('file');
        $path = $file->store('posts', 'public');

        // Fallback jika gagal simpan file
        if (!$path) {
            return back()->with('error', 'Gagal menyimpan file.');
        }

        $fileType = $file->getClientMimeType();

        // Simpan ke database
        Post::create([
            'user_id' => auth()->id(),
            'file_path' => $path,
            'file_type' => $fileType,
            'caption' => $request->caption,
        ]);

        return redirect()->route('profile')->with('success', 'Post uploaded successfully!');
    }
    // ✅ Menampilkan halaman edit post
    public function edit(Post $post)
    {
        if ($post->user_id !== auth()->id()) {
            abort(403);
        }

        return view('posts.edit', compact('post'));
    }

    // ✅ Memproses update post
    public function update(Request $request, Post $post)
    {
        if ($post->user_id !== auth()->id()) {
            abort(403);
        }

        $validated = $request->validate([
            'caption' => 'required|string|max:255',
            'file' => 'nullable|file|mimes:jpg,jpeg,png,mp4,mov|max:153600',
        ]);

        if ($request->hasFile('file')) {
            Storage::disk('public')->delete($post->file_path);

            $file = $request->file('file');
            $path = $file->store('posts', 'public');

            $post->file_path = $path;
            $post->file_type = $file->getMimeType();
        }

        $post->caption = $validated['caption'];
        $post->save();

        return redirect()->route('profile')->with('success', 'Post updated successfully!');
    }
    // ✅ Menampilkan halaman archive
    public function archive(Request $request)
    {
        $user = auth()->user();
        $query = Post::where('user_id', $user->id);

        if ($request->filled('start_date') && $request->filled('end_date')) {
            $query->whereBetween('created_at', [
                $request->start_date,
                $request->end_date
            ]);
        }

        $posts = $query->latest()->get();

        return view('posts.archive', compact('posts'));
    }

      // ✅ Mengekspor archive ke xlsx atau pdf
      public function export($format)
      {
          $user = auth()->user();
          $posts = Post::where('user_id', $user->id)->latest()->get();
  
          if ($format === 'xlsx') {
              return Excel::download(new PostsExport($posts), 'archive.xlsx');
          } elseif ($format === 'pdf') {
              $pdf = Pdf::loadView('posts.archive_pdf', ['posts' => $posts]);
              return $pdf->download('archive.pdf');
          }
  
          return redirect()->back()->with('error', 'Format tidak didukung.');
      }
}
