<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\PostsExport;
use Barryvdh\DomPDF\Facade\Pdf;
use Carbon\Carbon;
use App\Models\Like;

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
        $request->validate([
            'file' => 'required|file|mimes:jpg,jpeg,png,mp4,mov|max:153600', // Max 150MB
            'caption' => 'required|string|max:255',
        ]);

        $file = $request->file('file');
        $path = $file->store('posts', 'public');

        if (!$path) {
            return back()->with('error', 'Gagal menyimpan file.');
        }

        // Ambil tipe utama file (image/video)
        $fileType = str_starts_with($file->getClientMimeType(), 'image') ? 'image' : 'video';

        Post::create([
            'user_id' => auth()->id(),
            'file_path' => $path,
            'file_type' => $fileType,
            'caption' => $request->caption,
        ]);

        return redirect()->route('profile')->with('success', 'Post uploaded successfully!');
    }

    // Menampilkan halaman edit post
    public function edit(Post $post)
    {
        if ($post->user_id !== auth()->id()) {
            abort(403);
        }

        return view('posts.edit', compact('post'));
    }

    // Memproses update post
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
            $post->file_type = str_starts_with($file->getClientMimeType(), 'image') ? 'image' : 'video';
        }

        $post->caption = $validated['caption'];
        $post->save();

        return redirect()->route('profile')->with('success', 'Post updated successfully!');
    }

    // Implementasi delete post
    public function destroy(Post $post)
    {
        if ($post->user_id !== auth()->id()) {
            abort(403);
        }

        Storage::disk('public')->delete($post->file_path);
        $post->delete();

        return redirect()->route('profile')->with('success', 'Post deleted successfully!');
    }

    // ✅ Menampilkan halaman archive dengan filter tanggal
    public function archive(Request $request)
    {
        $user = auth()->user();
        $query = Post::where('user_id', $user->id);

        if ($request->filled('start_date')) {
            $start = Carbon::parse($request->start_date)->startOfDay();
            $query->where('created_at', '>=', $start);
        }

        if ($request->filled('end_date')) {
            $end = Carbon::parse($request->end_date)->endOfDay();
            $query->where('created_at', '<=', $end);
        }

        $posts = $query->latest()->get();

        return view('posts.archive', compact('posts'));
    }

    // ✅ Mengekspor archive ke xlsx atau pdf (mengikuti filter tanggal)
    public function export(Request $request, $format)
    {
        $user = auth()->user();
        $query = Post::where('user_id', $user->id);

        if ($request->filled('start_date')) {
            $start = Carbon::parse($request->start_date)->startOfDay();
            $query->where('created_at', '>=', $start);
        }

        if ($request->filled('end_date')) {
            $end = Carbon::parse($request->end_date)->endOfDay();
            $query->where('created_at', '<=', $end);
        }

        $posts = $query->latest()->get();

        if ($format === 'xlsx') {
            return Excel::download(new PostsExport($posts), 'archive.xlsx');
        } elseif ($format === 'pdf') {
            $pdf = Pdf::loadView('posts.archive_pdf', ['posts' => $posts]);
            return $pdf->download('archive.pdf');
        }

        return redirect()->back()->with('error', 'Format tidak didukung.');
    }

    // 🆕 Like & Unlike Post (FIXED)
    public function toggleLike(Post $post)
    {
        $user = auth()->user();
        
        // Cek apakah user sudah like post ini
        $existingLike = $post->likes()->where('user_id', $user->id)->first();
        
        if ($existingLike) {
            // Jika sudah like, hapus likenya
            $existingLike->delete();
        } else {
            // Jika belum like, buat like baru
            $post->likes()->create([
                'user_id' => $user->id
            ]);
        }
        
        return redirect()->back();
    }

    // 🆕 Komentar pada Postingan
    public function comment(Request $request, Post $post)
    {
        $request->validate([
            'comment' => 'required|string|max:500',
        ]);

        $post->comments()->create([
            'user_id' => auth()->id(),
            'comment' => $request->comment,
        ]);

        return redirect()->back();
    }
}