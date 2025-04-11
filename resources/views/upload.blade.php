<x-app-layout>
  <x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
      Upload Post
    </h2>
  </x-slot>

  <div class="max-w-md mx-auto mt-10 p-4 bg-white shadow rounded">
    @if (session('success'))
    <div class="bg-green-100 text-green-700 p-3 rounded mb-4">
      {{ session('success') }}
    </div>
    @endif

    @if ($errors->any())
    <div class="bg-red-100 text-red-700 p-3 rounded mb-4">
      <ul class="list-disc pl-5">
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
      </ul>
    </div>
    @endif

    <form action="{{ route('posts.store') }}" method="POST" enctype="multipart/form-data" class="space-y-4">
      @csrf

      <div>
        <label for="file" class="block font-semibold">Pilih Gambar/Video:</label>
        <input type="file" name="file" id="file" required class="w-full border rounded px-3 py-2">
      </div>

      <div>
        <label for="caption" class="block font-semibold">Caption:</label>
        <textarea name="caption" id="caption" rows="3" class="w-full border rounded px-3 py-2" placeholder="Tulis caption..." required></textarea>
      </div>

      <button type="submit" class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded">
        Upload
      </button>
    </form>
  </div>
</x-app-layout>