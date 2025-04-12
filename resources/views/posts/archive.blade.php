<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">Archive</h2>
    </x-slot>

    <div class="py-6 max-w-6xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white p-6 rounded shadow">
            <form method="GET" class="mb-6 flex flex-col md:flex-row gap-4">
                <div>
                    <label class="block text-sm font-medium text-gray-700">Start Date</label>
                    <input type="date" name="start_date" value="{{ request('start_date') }}"
                        class="mt-1 block w-full border-gray-300 rounded-md shadow-sm">
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-700">End Date</label>
                    <input type="date" name="end_date" value="{{ request('end_date') }}"
                        class="mt-1 block w-full border-gray-300 rounded-md shadow-sm">
                </div>
                <div class="flex items-end">
                    <button type="submit" class="px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700">
                        Filter
                    </button>
                </div>
            </form>

            <div class="mb-4 flex justify-end gap-3">
                <a href="{{ route('posts.archive.export', ['format' => 'xlsx'] + request()->only(['start_date', 'end_date'])) }}" class="px-4 py-2 bg-green-600 text-white rounded hover:bg-green-700">Export Excel</a>
                <a href="{{ route('posts.archive.export', ['format' => 'pdf'] + request()->only(['start_date', 'end_date'])) }}" class="px-4 py-2 bg-red-600 text-white rounded hover:bg-red-700">Export PDF</a>
            </div>

            <div class="overflow-x-auto">
                <table class="min-w-full table-auto text-sm">
                    <thead class="bg-orange-300">
                        <tr>
                            <th class="px-4 py-2 text-left">No</th>
                            <th class="px-4 py-2 text-left">Caption</th>
                            <th class="px-4 py-2 text-left">Type</th>
                            <th class="px-4 py-2 text-left">Created At</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($posts as $index => $post)
                            <tr class="border-b">
                                <td class="px-4 py-2">{{ $index + 1 }}</td>
                                <td class="px-4 py-2">{{ $post->caption }}</td>
                                <td class="px-4 py-2">{{ $post->file_type }}</td>
                                <td class="px-4 py-2">{{ $post->created_at->format('Y-m-d H:i') }}</td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="4" class="px-4 py-2 text-center text-gray-500">No posts found.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</x-app-layout>