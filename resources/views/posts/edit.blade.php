<x-app-layout>
  <x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
      Edit Post
    </h2>
  </x-slot>

  <div class="max-w-3xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
    @if ($errors->any())
    <div class="mb-4 p-3 rounded bg-red-100 text-red-700 border border-red-300">
      <ul class="list-disc pl-5 text-sm">
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
      </ul>
    </div>
    @endif

    <form action="{{ route('posts.update', $post->id) }}" method="POST" enctype="multipart/form-data" class="bg-white p-6 rounded shadow">
      @csrf
      @method('PUT')

      <div class="mb-4">
        <label class="block text-gray-700 text-sm font-bold mb-2">Current Media:</label>
        @if (Str::endsWith($post->file_path, ['.jpg', '.jpeg', '.png']))
        <img src="{{ asset('storage/' . $post->file_path) }}" alt="Post Image" class="w-full max-h-64 object-contain rounded">
        @elseif (Str::endsWith($post->file_path, ['.mp4', '.mov']))
        <video controls class="w-full max-h-64 object-contain rounded">
          <source src="{{ asset('storage/' . $post->file_path) }}" type="{{ $post->file_type }}">
          Your browser does not support the video tag.
        </video>
        @endif
      </div>

      <div class="mb-4">
        <label for="caption" class="block text-gray-700 font-medium mb-1">Caption</label>
        <textarea name="caption" id="caption" rows="3" class="w-full border-gray-300 rounded shadow-sm">{{ old('caption', $post->caption) }}</textarea>
      </div>

      <div class="mb-4">
        <label for="file" class="block text-gray-700 font-medium mb-1">Replace File (optional)</label>
        <input type="file" name="file" id="file" accept=".jpg,.jpeg,.png,.mp4,.mov" class="block w-full border-gray-300 rounded shadow-sm">
        <p class="text-xs text-gray-500 mt-1">Leave empty if you don't want to replace the current media.</p>
      </div>

      <div class="flex justify-end">
      <a href="{{ route('profile') }}" class="mr-3 inline-block px-4 py-2 bg-red-600 text-white rounded hover:bg-red-700">Cancel</a>
        <button type="submit" class="px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700">Update Post</button>
      </div>
    </form>
  </div>
</x-app-layout>
