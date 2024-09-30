<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Game>
 */
class GameFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title'=>fake()->text(25),
            'cover_art'=>fake()->imageUrl(640, 480),
            'developer'=>fake()->text(20),
            'release_year'=>rand(2020, 2024),
            'genre'=>fake()->firstName(),
        ];
    }
}
