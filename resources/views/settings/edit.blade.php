<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Settings Profile
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-3xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-6">
                
                @if(session('success'))
                    <div class="bg-green-100 text-green-800 px-4 py-2 rounded mb-4">
                        {{ session('success') }}
                    </div>
                @endif

                <form action="{{ route('settings.update') }}" method="POST" enctype="multipart/form-data" class="space-y-6">
                    @csrf

                    <div>
                        <label class="block font-medium mb-1" for="photo_profile">Foto Profil</label>
                        <input type="file" name="photo_profile" id="photo_profile" class="border p-2 w-full">
                        @if ($user->photo_profile)
                            <img src="{{ asset('storage/profile_photos/' . $user->photo_profile) }}" class="mt-2 w-24 h-24 rounded-full object-cover" alt="Foto Profil">
                        @endif
                    </div>

                    <div>
                        <label class="block font-medium mb-1" for="bio">Bio</label>
                        <textarea name="bio" id="bio" rows="4" class="border p-2 w-full">{{ old('bio', $user->bio) }}</textarea>
                    </div>

                    <div>
                        <label class="block font-medium mb-1" for="feed_per_row">Jumlah Feed per Baris</label>
                        <input type="number" name="feed_per_row" id="feed_per_row" class="border p-2 w-full" value="{{ old('feed_per_row', $user->feed_per_row ?? 3) }}" min="1" max="6">
                    </div>

                    <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded">Simpan</button>
                </form>

            </div>
        </div>
    </div>
</x-app-layout>
