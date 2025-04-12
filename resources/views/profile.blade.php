<x-app-layout>
  <x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
      {{ $user->name }}'s Profile
    </h2>
  </x-slot>

  @inject('str', 'Illuminate\Support\Str')

  <div class="max-w-4xl mx-auto py-6 px-4 sm:px-6 lg:px-8">

    {{-- Foto Profil + Bio dalam style Instagram --}}
    <div class="mb-6 flex items-start gap-8">
      <div class="flex-shrink-0">
        @if ($user->photo_profile)
          <img src="{{ asset('storage/profile_photos/' . $user->photo_profile) }}" 
               alt="Foto Profil"
               class="w-24 h-24 rounded-full object-cover border border-gray-300">
        @else
          <div class="w-24 h-24 rounded-full bg-gray-200 flex items-center justify-center text-gray-500">
            No Photo
          </div>
        @endif
      </div>
      <div class="flex-1">
        <h2 class="text-xl font-bold">{{ $user->name }}</h2>
        @if ($user->bio)
          <p class="text-sm text-gray-600 mt-1">{{ $user->bio }}</p>
        @endif
      </div>
    </div>

    {{-- Pesan sukses --}}
    @if(session('success'))
      <div class="mb-4 p-3 rounded bg-green-100 text-green-700 border border-green-300">
        {{ session('success') }}
      </div>
    @endif

    {{-- Daftar Post --}}
    @if($posts->isEmpty())
      <p class="text-gray-500 text-center">No posts yet.</p>
    @else
      @php
        $cols = $user->feed_per_row ?? 3;
        switch ($cols) {
          case 1: $gridCols = 'grid-cols-1'; break;
          case 2: $gridCols = 'grid-cols-2'; break;
          case 3: $gridCols = 'grid-cols-3'; break;
          case 4: $gridCols = 'grid-cols-4'; break;
          default: $gridCols = 'grid-cols-3'; break;
        }
      @endphp
      <div class="grid {{ $gridCols }} gap-4">
        @foreach ($posts as $post)
          <div class="border rounded overflow-hidden shadow bg-white flex flex-col">
            @if (Str::endsWith($post->file_path, ['.jpg', '.jpeg', '.png']))
              <div class="w-full h-48 bg-white flex items-center justify-center">
                <img src="{{ asset('storage/' . $post->file_path) }}" alt="Image" class="h-full object-contain">
              </div>
            @elseif (Str::endsWith($post->file_path, ['.mp4', '.mov']))
              <div class="w-full h-48 bg-white flex items-center justify-center">
                <video controls class="h-full object-contain">
                  <source src="{{ asset('storage/' . $post->file_path) }}" type="{{ $post->file_type }}">
                  Your browser does not support the video tag.
                </video>
              </div>
            @endif

            <div class="p-3 flex-1 flex flex-col justify-between">
              <div>
                <p class="text-gray-800 text-sm">{{ $post->caption }}</p>
                <p class="text-xs text-gray-500 mt-1">{{ $post->created_at->format('d M Y H:i') }}</p>
              </div>
              <div class="mt-3 flex justify-between items-center">
                <a href="{{ route('posts.edit', $post->id) }}"
                  class="inline-block px-3 py-1 bg-blue-500 text-white text-sm rounded hover:bg-blue-600 transition">
                  Edit
                </a>
                <form action="{{ route('posts.destroy', $post->id) }}" method="POST" onsubmit="return confirm('Yakin ingin hapus postingan ini?')">
                  @csrf
                  @method('DELETE')
                  <button type="submit"
                    class="inline-block px-3 py-1 bg-red-500 text-white text-sm rounded hover:bg-red-600 transition">
                    Delete
                  </button>
                </form>
              </div>
            </div>
          </div>
        @endforeach
      </div>
    @endif

  </div>
</x-app-layout>