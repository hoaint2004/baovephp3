<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Document</title>
</head>

<body>
    <div class="container w-60">
        <h1>Danh sách Game</h1>
        @if (session('message'))
            <div class="alert alert-primary">
                {{ session('message') }}
            </div>
        @endif

        <a href="{{ route('games.create') }}" class="btn btn-success">Thêm mới</a>
        <table class="table table-striped">
            <thead>
                <th>#ID</th>
                <th>Title</th>
                <th>Cover_art</th>
                <th>Developer</th>
                <th>Release_year</th>
                <th>Genre</th>
            </thead>

            <tbody>
                @foreach ($games as $game)
                    <tr>
                        <td>{{ $game->id }}</td>
                        <td>{{ $game->title }}</td>
                        <td><img src="{{ asset('storage/' . $game->cover_art) }}" alt="" width="60"></td>
                        <td>{{ $game->developer }}</td>
                        <td>{{ $game->release_year }}</td>
                        <td>{{ $game->genre }}</td>
                        <td class="d-flex gap-1">
                            <a href="{{ route('games.edit', $game) }}" class="btn btn-warning">Sửa</a>
                            <form action="{{ route('games.destroy', $game) }}" method="post">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger"
                                    onclick="return confirm('Bạn có chắc chắn muốn xóa không?')">Xóa</button>
                            </form>
                        </td>

                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
</script>

</html>
