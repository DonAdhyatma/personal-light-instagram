<x-app-layout>
  <x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
      Upload Post
    </h2>
  </x-slot>

  <div class="py-12">
    <div class="max-w-3xl mx-auto sm:px-6 lg:px-8">
      <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-6">
        <form action="{{ route('posts.store') }}" method="POST" enctype="multipart/form-data">
          @csrf

          <div class="mb-4">
            <label for="file" class="block text-sm font-medium text-gray-700">File (Image/Video)</label>
            <input
              type="file"
              name="file"
              id="file"
              accept="image/*,video/*"
              required
              class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm">
            @error('file')
            <div class="text-sm text-red-500 mt-1">{{ $message }}</div>
            @enderror
          </div>

          <div class="mb-4">
            <label for="caption" class="block text-sm font-medium text-gray-700">Caption</label>
            <textarea
              name="caption"
              id="caption"
              rows="3"
              required
              class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm">{{ old('caption') }}</textarea>
            @error('caption')
            <div class="text-sm text-red-500 mt-1">{{ $message }}</div>
            @enderror
          </div>

          <div class="flex justify-end">
            <button
              type="submit"
              class="px-4 py-2 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-md">
              Upload
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</x-app-layout>