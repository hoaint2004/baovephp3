<?php

namespace App\Http\Controllers;

use App\Models\Game;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class GameController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $games = Game::query()->latest('id')->paginate(10);
        return view('index', compact('games'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'title'=>'required',
            'cover_art' =>'required',
            'developer' =>'required',
            'release_year' =>'required',
            'genre' =>'required',
        ]);

        $path_cover_art = $request->file('cover_art')->store('images');
        $data['cover_art'] = $path_cover_art;

        // Thêm dữ liệu vào data
        Game::query()->create($data);

        return redirect()->route('games.index')->with('message', 'Thêm game mới thành công!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Game $game)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Game $game)
    {
        return view('edit', compact('game'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Game $game)
    {
        $data = $request->validate([
            // k cần validate ảnh
            'title'=>'required',
            'developer' =>'required',
            'release_year' =>'required',
            'genre' =>'required',
        ]);

        // Không cập nhật ảnh thì lấy ảnh cũ
        $data['cover_art'] = $game->cover_art;
        // Nếu cập nhật ảnh xóa ảnh cũ
        if($request->hasFile('cover_art')) {
            // Xóa ảnh cũ khi có ảnh mới
            Storage::delete($game->cover_art);
            // if($game->cover_art != null){
            // if(file_exists('storage/'. $game->cover_art)){
            //     unlink('storage/'. $game->cover_art);
            // }
        // }
            $path_cover_art = $request->file('cover_art')->store('images');
            $data['cover_art'] = $path_cover_art; //Cập nhật ảnh mới
        }
        
        $game->update($data);
        return redirect()->route('games.index')->with('message', 'Đã cập nhật Game thành công!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Game $game)
    {
        // Kiểm tra xóa ảnh nếu có
        Storage::delete($game->cover_art);
        // if(file_exists('storage/'. $game->cover_art)){
        //     unlink('storage/'. $game->cover_art);
        // }

        $game->delete();
        return redirect()->route('games.index');
    }
}
