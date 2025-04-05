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
  { title: 'Super Mario Bros', genre: 'Platformer', description: 'An iconic platform game featuring Mario and Luigi.' },
  { title: 'Minecraft', genre: 'Sandbox', description: 'A sandbox game where players can build and explore worlds.' },
  { title: 'Fortnite', genre: 'Battle Royale', description: 'A battle royale game with building mechanics and a colorful style.' },
  { title: 'Call of Duty', genre: 'Shooter', description: 'A first-person shooter game with intense multiplayer action.' },
  { title: 'League of Legends', genre: 'MOBA', description: 'A popular multiplayer online battle arena game.' },
  { title: 'The Legend of Zelda', genre: 'Action-Adventure', description: 'An action-adventure game where Link embarks on a quest to rescue Princess Zelda.' },
  { title: 'Animal Crossing: New Horizons', genre: 'Life Simulation', description: 'A life simulation game where you build your own island paradise.' },
  { title: 'Grand Theft Auto V', genre: 'Action-Adventure', description: 'An open-world action-adventure game set in the fictional city of Los Santos.' },
  { title: 'Overwatch', genre: 'First-Person Shooter', description: 'A team-based first-person shooter with colorful characters and unique abilities.' },
  { title: 'Among Us', genre: 'Party', description: 'A multiplayer party game where players work together to find the imposter.' },
  { title: 'Rocket League', genre: 'Sports', description: 'A unique mix of soccer and cars in an action-packed, high-speed game.' },
  { title: 'Apex Legends', genre: 'Battle Royale', description: 'A free-to-play battle royale game with hero-based gameplay.' },
  { title: 'The Witcher 3: Wild Hunt', genre: 'RPG', description: 'An open-world RPG where you play as Geralt of Rivia in a dark fantasy world.' },
  { title: 'Hollow Knight', genre: 'Metroidvania', description: 'A challenging Metroidvania game set in a dark and atmospheric world.' },
  { title: 'Red Dead Redemption 2', genre: 'Action-Adventure', description: 'A western-themed action-adventure game with an immersive open world.' },
  { title: 'Cyberpunk 2077', genre: 'RPG', description: 'A dystopian RPG set in a futuristic world with deep storylines and high-tech gadgets.' },
  { title: 'FIFA 21', genre: 'Sports', description: 'The latest installment in the FIFA soccer game series.' },
  { title: 'The Elder Scrolls V: Skyrim', genre: 'RPG', description: 'An open-world RPG where you explore the world of Tamriel and fight dragons.' },
  { title: 'Minecraft Dungeons', genre: 'Action RPG', description: 'An action RPG game set in the Minecraft universe with dungeon crawling elements.' },
  { title: 'Sekiro: Shadows Die Twice', genre: 'Action-Adventure', description: 'A samurai action-adventure game with challenging combat and stealth mechanics.' },
  { title: 'Dark Souls III', genre: 'Action RPG', description: 'A challenging action RPG where you fight your way through dark and twisted worlds.' },
  { title: 'Doom Eternal', genre: 'Shooter', description: 'A fast-paced first-person shooter with brutal combat and heavy metal music.' },
  { title: 'Street Fighter V', genre: 'Fighting', description: 'A competitive 2D fighting game with various characters and move sets.' },
  { title: 'NBA 2K21', genre: 'Sports', description: 'A basketball simulation game where you can play with real-life teams and stars.' },
  { title: 'Battlefield V', genre: 'Shooter', description: 'A first-person shooter game set during World War II with large-scale battles.' },
  { title: 'Tetris', genre: 'Puzzle', description: 'A classic puzzle game where you stack falling blocks to clear lines.' },
  { title: 'Fall Guys', genre: 'Party', description: 'A fun and chaotic battle royale game where players compete in obstacle courses.' },
  { title: 'The Last of Us Part II', genre: 'Action-Adventure', description: 'A post-apocalyptic action-adventure game that focuses on survival and emotions.' },
  { title: 'God of War', genre: 'Action-Adventure', description: 'An action-adventure game following Kratos and his son in a world of Norse mythology.' },
  { title: 'Kingdom Hearts III', genre: 'Action RPG', description: 'A Disney-themed RPG where Sora and his friends battle against darkness and villains.' },
  { title: 'Resident Evil 2', genre: 'Survival Horror', description: 'A survival horror game with zombies and puzzles in a post-apocalyptic world.' },
  { title: 'Valorant', genre: 'First-Person Shooter', description: 'A tactical first-person shooter with unique characters and strategic gameplay.' },
  { title: 'Pokemon Sword', genre: 'RPG', description: 'A RPG game where you catch, train, and battle with Pokemon in the Galar region.' },
  { title: 'Pokémon Go', genre: 'AR', description: 'A mobile augmented reality game where you catch and train Pokémon in the real world.' },
  { title: 'Hitman 3', genre: 'Stealth', description: 'A stealth game where you play as a contract assassin completing missions around the world.' },
  { title: 'Super Smash Bros. Ultimate', genre: 'Fighting', description: 'A crossover fighting game featuring characters from various Nintendo franchises.' },
  { title: 'Little Big Planet 3', genre: 'Platformer', description: 'A platform game where you create and play custom levels with adorable characters.' },
  { title: 'Final Fantasy VII Remake', genre: 'RPG', description: 'A remake of the classic Final Fantasy VII game with updated graphics and gameplay.' },
  { title: 'No Man\'s Sky', genre: 'Sandbox', description: 'A sci-fi exploration game set in a procedurally generated universe.' },
  { title: 'The Sims 4', genre: 'Life Simulation', description: 'A life simulation game where you control virtual people and their daily lives.' },
  { title: 'Forza Horizon 4', genre: 'Racing', description: 'A racing game set in an open-world with dynamic seasons and beautiful scenery.' },
  { title: 'F1 2020', genre: 'Sports', description: 'A racing simulation game based on Formula 1 racing with real-life cars and drivers.' },
  { title: 'Tom Clancy\'s Rainbow Six Siege', genre: 'Tactical Shooter', description: 'A tactical shooter with destructible environments and team-based gameplay.' },
  { title: 'Borderlands 3', genre: 'Shooter', description: 'A looter-shooter game set in a colorful, humorous world with lots of guns and explosions.' },
  { title: 'Monster Hunter: World', genre: 'Action RPG', description: 'An action RPG where you hunt large monsters and craft new weapons and armor.' },
  { title: 'World of Warcraft', genre: 'MMORPG', description: 'A massively multiplayer online role-playing game where players explore a vast world.' },
  { title: 'Star Wars Jedi: Fallen Order', genre: 'Action-Adventure', description: 'An action-adventure game set in the Star Wars universe where you fight with lightsabers.' },
  { title: 'Mortal Kombat 11', genre: 'Fighting', description: 'A brutal and gory fighting game with iconic characters and fatalities.' },
  { title: 'Watch Dogs: Legion', genre: 'Action-Adventure', description: 'An open-world game set in London where you control multiple characters in a rebellion.' },
  { title: 'Hades', genre: 'Rogue-like', description: 'A rogue-like action game set in the Greek Underworld, where you fight your way out of Hades.' },
  { title: 'Fallout 4', genre: 'RPG', description: 'An open-world RPG set in a post-apocalyptic world where you explore the wasteland.' }
]

games.each do |game_attrs|
  Game.find_or_create_by(title: game_attrs[:title]) do |game|
    game.genre = game_attrs[:genre]
    game.description = game_attrs[:description]
  end
end

puts "Sample games created successfully! Total: #{Game.count} games."
