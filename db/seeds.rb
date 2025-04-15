# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
games = [
  { title: 'Super Mario Bros', genre: 'Platformer', platform: 'Nintendo', description: 'An iconic platform game featuring Mario and Luigi.', players: 2 },
  { title: 'Minecraft', genre: 'Sandbox', platform: 'PC, Console, Mobile', description: 'A sandbox game where players can build and explore worlds.', players: 1 },
  { title: 'Fortnite', genre: 'Battle Royale', platform: 'PC, Console, Mobile', description: 'A battle royale game with building mechanics and a colorful style.', players: 100 },
  { title: 'Call of Duty', genre: 'Shooter', platform: 'PC, Console', description: 'A first-person shooter game with intense multiplayer action.', players: 12 },
  { title: 'League of Legends', genre: 'MOBA', platform: 'PC', description: 'A popular multiplayer online battle arena game.', players: 10 },
  { title: 'The Legend of Zelda', genre: 'Action-Adventure', platform: 'Nintendo', description: 'An action-adventure game where Link embarks on a quest to rescue Princess Zelda.', players: 1 },
  { title: 'Animal Crossing: New Horizons', genre: 'Life Simulation', platform: 'Nintendo', description: 'A life simulation game where you build your own island paradise.', players: 4 },
  { title: 'Grand Theft Auto V', genre: 'Action-Adventure', platform: 'PC, Console', description: 'An open-world action-adventure game set in the fictional city of Los Santos.', players: 30 },
  { title: 'Overwatch', genre: 'First-Person Shooter', platform: 'PC, Console', description: 'A team-based first-person shooter with colorful characters and unique abilities.', players: 6 },
  { title: 'Among Us', genre: 'Party', platform: 'PC, Mobile', description: 'A multiplayer party game where players work together to find the imposter.', players: 10 },
  { title: 'Rocket League', genre: 'Sports', platform: 'PC, Console', description: 'A unique mix of soccer and cars in an action-packed, high-speed game.', players: 8 },
  { title: 'Apex Legends', genre: 'Battle Royale', platform: 'PC, Console', description: 'A free-to-play battle royale game with hero-based gameplay.', players: 60 },
  { title: 'The Witcher 3: Wild Hunt', genre: 'RPG', platform: 'PC, Console', description: 'An open-world RPG where you play as Geralt of Rivia in a dark fantasy world.', players: 1 },
  { title: 'Hollow Knight', genre: 'Metroidvania', platform: 'PC, Console', description: 'A challenging Metroidvania game set in a dark and atmospheric world.', players: 1 },
  { title: 'Red Dead Redemption 2', genre: 'Action-Adventure', platform: 'PC, Console', description: 'A western-themed action-adventure game with an immersive open world.', players: 1 },
  { title: 'Cyberpunk 2077', genre: 'RPG', platform: 'PC, Console', description: 'A dystopian RPG set in a futuristic world with deep storylines and high-tech gadgets.', players: 1 },
  { title: 'FIFA 21', genre: 'Sports', platform: 'PC, Console', description: 'The latest installment in the FIFA soccer game series.', players: 22 },
  { title: 'The Elder Scrolls V: Skyrim', genre: 'RPG', platform: 'PC, Console', description: 'An open-world RPG where you explore the world of Tamriel and fight dragons.', players: 1 },
  { title: 'Minecraft Dungeons', genre: 'Action RPG', platform: 'PC, Console', description: 'An action RPG game set in the Minecraft universe with dungeon crawling elements.', players: 4 },
  { title: 'Sekiro: Shadows Die Twice', genre: 'Action-Adventure', platform: 'PC, Console', description: 'A samurai action-adventure game with challenging combat and stealth mechanics.', players: 1 },
  { title: 'Dark Souls III', genre: 'Action RPG', platform: 'PC, Console', description: 'A challenging action RPG where you fight your way through dark and twisted worlds.', players: 1 },
  { title: 'Doom Eternal', genre: 'Shooter', platform: 'PC, Console', description: 'A fast-paced first-person shooter with brutal combat and heavy metal music.', players: 1 },
  { title: 'Street Fighter V', genre: 'Fighting', platform: 'PC, Console', description: 'A competitive 2D fighting game with various characters and move sets.', players: 2 },
  { title: 'NBA 2K21', genre: 'Sports', platform: 'PC, Console', description: 'A basketball simulation game where you can play with real-life teams and stars.', players: 10 },
  { title: 'Battlefield V', genre: 'Shooter', platform: 'PC, Console', description: 'A first-person shooter game set during World War II with large-scale battles.', players: 64 },
  { title: 'Tetris', genre: 'Puzzle', platform: 'PC, Console, Mobile', description: 'A classic puzzle game where you stack falling blocks to clear lines.', players: 1 },
  { title: 'Fall Guys', genre: 'Party', platform: 'PC, Console', description: 'A fun and chaotic battle royale game where players compete in obstacle courses.', players: 60 },
  { title: 'The Last of Us Part II', genre: 'Action-Adventure', platform: 'PlayStation', description: 'A post-apocalyptic action-adventure game that focuses on survival and emotions.', players: 1 },
  { title: 'God of War', genre: 'Action-Adventure', platform: 'PlayStation', description: 'An action-adventure game following Kratos and his son in a world of Norse mythology.', players: 1 },
  { title: 'Kingdom Hearts III', genre: 'Action RPG', platform: 'PlayStation, Xbox, PC', description: 'A Disney-themed RPG where Sora and his friends battle against darkness and villains.', players: 1 },
  { title: 'Resident Evil 2', genre: 'Survival Horror', platform: 'PC, Console', description: 'A survival horror game with zombies and puzzles in a post-apocalyptic world.', players: 1 },
  { title: 'Valorant', genre: 'First-Person Shooter', platform: 'PC', description: 'A tactical first-person shooter with unique characters and strategic gameplay.', players: 10 },
  { title: 'Pokemon Sword', genre: 'RPG', platform: 'Nintendo', description: 'A RPG game where you catch, train, and battle with Pokemon in the Galar region.', players: 2 },
  { title: 'Pokémon Go', genre: 'AR', platform: 'Mobile', description: 'A mobile augmented reality game where you catch and train Pokémon in the real world.', players: 1 },
  { title: 'Hitman 3', genre: 'Stealth', platform: 'PC, Console', description: 'A stealth game where you play as a contract assassin completing missions around the world.', players: 1 },
  { title: 'Super Smash Bros. Ultimate', genre: 'Fighting', platform: 'Nintendo', description: 'A crossover fighting game featuring characters from various Nintendo franchises.', players: 8 },
  { title: 'Little Big Planet 3', genre: 'Platformer', platform: 'PlayStation', description: 'A platform game where you create and play custom levels with adorable characters.', players: 4 },
  { title: 'Final Fantasy VII Remake', genre: 'RPG', platform: 'PlayStation', description: 'A remake of the classic Final Fantasy VII game with updated graphics and gameplay.', players: 1 },
  { title: 'No Man\'s Sky', genre: 'Sandbox', platform: 'PC, Console', description: 'A sci-fi exploration game set in a procedurally generated universe.', players: 1 },
  { title: 'The Sims 4', genre: 'Life Simulation', platform: 'PC, Console', description: 'A life simulation game where you control virtual people and their daily lives.', players: 1 },
  { title: 'Forza Horizon 4', genre: 'Racing', platform: 'PC, Console', description: 'A racing game set in an open-world with dynamic seasons and beautiful scenery.', players: 1 },
  { title: 'F1 2020', genre: 'Sports', platform: 'PC, Console', description: 'A racing simulation game based on Formula 1 racing with real-life cars and drivers.', players: 22 },
  { title: 'Tom Clancy\'s Rainbow Six Siege', genre: 'Tactical Shooter', platform: 'PC, Console', description: 'A tactical shooter with destructible environments and team-based gameplay.', players: 10 },
  { title: 'Borderlands 3', genre: 'Shooter', platform: 'PC, Console', description: 'A looter-shooter game set in a colorful, humorous world with lots of guns and explosions.', players: 4 },
  { title: 'Monster Hunter: World', genre: 'Action RPG', platform: 'PC, Console', description: 'An action RPG where you hunt large monsters and craft new weapons and armor.', players: 4 },
  { title: 'World of Warcraft', genre: 'MMORPG', platform: 'PC', description: 'A massively multiplayer online role-playing game where players explore a vast world.', players: 40 },
  { title: 'Star Wars Jedi: Fallen Order', genre: 'Action-Adventure', platform: 'PC, Console', description: 'An action-adventure game set in the Star Wars universe where you fight with lightsabers.', players: 1 },
  { title: 'Mortal Kombat 11', genre: 'Fighting', platform: 'PC, Console', description: 'A brutal and gory fighting game with iconic characters and fatalities.', players: 2 },
  { title: 'Watch Dogs: Legion', genre: 'Action-Adventure', platform: 'PC, Console', description: 'An open-world game set in London where you control multiple characters in a rebellion.', players: 1 },
  { title: 'Hades', genre: 'Rogue-like', platform: 'PC, Console', description: 'A rogue-like action game set in the Greek Underworld, where you fight your way out of Hades.', players: 1 },
  { title: 'Fallout 4', genre: 'RPG', platform: 'PC, Console', description: 'An open-world RPG set in a post-apocalyptic world filled with mutants and factions.', players: 1 }
]

games.each do |game_attrs|
  Game.find_or_create_by(title: game_attrs[:title]) do |game|
    game.genre = game_attrs[:genre]
    game.description = game_attrs[:description]
    game.platform = game_attrs[:platform]
    game.players = game_attrs[:players]
    game.image_url = "https://example.com/image.jpg"
  end
end

puts "🎮 Seeded #{Game.count} games!"
