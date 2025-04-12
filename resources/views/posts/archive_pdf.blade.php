<!DOCTYPE html>
<html>
<head>
    <title>Archive PDF</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 12px;
        }
        th, td {
            padding: 8px;
            border: 1px solid #ddd;
        }
        th {
            background: #f4f4f4;
        }
    </style>
</head>
<body>
    <h2>Archived Posts</h2>
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
            @foreach ($posts as $index => $post)
                <tr>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $post->caption }}</td>
                    <td>{{ $post->file_type }}</td>
                    <td>{{ $post->created_at->format('Y-m-d H:i') }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
