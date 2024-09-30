<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Thêm mới</title>
</head>
<body>
    <div class="container w-60">
        <h1>Sửa Game</h1>
        @if ($errors->any())
        <div class="alert alert-danger mt-5">
            <ul>
            @foreach ($errors->all() as $error)
                <li>{{$error}}</li>
            @endforeach
            </ul>
        </div>
            
        @endif
            
        <a href="{{route('games.index')}}" class="btn btn-success">Danh sách Game</a>
        
        <form action="{{route('games.update', $game)}}" method="post" enctype="multipart/form-data">
            @csrf
            {{-- Bắt buộc phải có method put --}}
            @method('PUT')
            <div class="mb-3">
                <label for="">Title</label>
                <input type="text" name="title" class="form-control" value="{{$game->title}}">    
            </div>  

            <div class="mb-3">
                <label for="">Cover Art</label>
                <input type="file" name="cover_art" class="form-control">    
                <img src="{{asset('storage/'.$game->cover_art)}}" alt="{{$game->cover_art}}" width="60">
            </div>

            <div class="mb-3">
                <label for="">Developer</label>
                <input type="text" name="developer" class="form-control" value="{{$game->developer}}">
            </div>

            <div class="mb-3">
                <label for="">Release Year</label>
                <input type="text" name="release_year" class="form-control" value="{{$game->release_year}}">
            </div>

            <div class="mb-3">
                <label for="">Genre</label>
                <input type="text" name="genre" class="form-control" value="{{$game->genre}}">
            </div>

            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Cập Nhật</button>
            </div>
        </form>    
    </div>
</body>
</html>