<table>
    <thead>
        <tr>
            <th>No</th>
            <th>Caption</th>
            <th>Type</th>
            <th>Created At</th>
        </tr>
    </thead>
    <tbody>
        @foreach($posts as $index => $post)
        <tr>
            <td>{{ $index + 1 }}</td>
            <td>{{ $post->caption }}</td>
            <td>{{ $post->file_type }}</td>
            <td>{{ $post->created_at }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
