<x-app-layout>
  <x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
      {{ auth()->user()->name }}'s Profile
    </h2>
  </x-slot>

  @inject('str', 'Illuminate\Support\Str')

  <div class="max-w-4xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
    <div class="mb-6">
      <p class="text-gray-600">{{ auth()->user()->bio ?? 'No bio yet.' }}</p>
    </div>

    @if(session('success'))
    <div class="mb-4 p-3 rounded bg-green-100 text-green-700 border border-green-300">
      {{ session('success') }}
    </div>
    @endif

    @if($posts->isEmpty())
    <p class="text-gray-500">No posts yet.</p>
    @else
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
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
          <div class="mt-3">
            <a href="{{ route('posts.edit', $post->id) }}"
              class="inline-block px-3 py-1 bg-blue-500 text-white text-sm rounded hover:bg-blue-600 transition">
              Edit
            </a>
          </div>
        </div>
      </div>
      @endforeach
    </div>
    @endif
  </div>
</x-app-layout>
