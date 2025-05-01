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
  { title: 'Kingdom Come Deliverence 2', genre: 'RPG', platform: 'PC, Console', description: 'An open-world RPG set in a medevil time.', players: 1, cloudinary_public_id: 'images_nktp5z' },
  { title: 'Super Mario Bros', genre: 'Platformer', platform: 'Nintendo', description: 'An iconic platform game featuring Mario and Luigi.', players: 2, cloudinary_public_id: '81KxoFHLuTL_pekynx' },
  { title: 'Minecraft', genre: 'Sandbox', platform: 'PC, Console, Mobile', description: 'A sandbox game where players can build and explore worlds.', players: 1, cloudinary_public_id: 'minecraft_w1j3d4' },
  { title: 'Fortnite', genre: 'Battle Royale', platform: 'PC, Console, Mobile', description: 'A battle royale game with building mechanics and a colorful style.', players: 100, cloudinary_public_id: 'fortine_rbm0ui' },
  { title: 'Call of Duty', genre: 'Shooter', platform: 'PC, Console', description: 'A first-person shooter game with intense multiplayer action.', players: 12, cloudinary_public_id: 'call_of_duty_d0dwwf' },
  { title: 'League of Legends', genre: 'MOBA', platform: 'PC', description: 'A popular multiplayer online battle arena game.', players: 10, cloudinary_public_id: 'leauge_of_legends_gynotd' },
  { title: 'The Legend of Zelda', genre: 'Action-Adventure', platform: 'Nintendo', description: 'An action-adventure game where Link embarks on a quest to rescue Princess Zelda.', players: 1, cloudinary_public_id: '81KGsbq8ekL_aoalyz' },
  { title: 'Animal Crossing: New Horizons', genre: 'Life Simulation', platform: 'Nintendo', description: 'A life simulation game where you build your own island paradise.', players: 4, cloudinary_public_id: 'animal_corssing_za1vxe' },
  { title: 'Grand Theft Auto V', genre: 'Action-Adventure', platform: 'PC, Console', description: 'An open-world action-adventure game set in the fictional city of Los Santos.', players: 30, cloudinary_public_id: 'gta5_tdbw16' },
  { title: 'Overwatch', genre: 'First-Person Shooter', platform: 'PC, Console', description: 'A team-based first-person shooter with colorful characters and unique abilities.', players: 6, cloudinary_public_id: 'overwatch_blbjq6' },
  { title: 'Among Us', genre: 'Party', platform: 'PC, Mobile', description: 'A multiplayer party game where players work together to find the imposter.', players: 10, cloudinary_public_id: 'among_us_lys59o' },
  { title: 'Rocket League', genre: 'Sports', platform: 'PC, Console', description: 'A unique mix of soccer and cars in an action-packed, high-speed game.', players: 8, cloudinary_public_id: 'Rocket_League_cover_tl9hpk' },
  { title: 'Apex Legends', genre: 'Battle Royale', platform: 'PC, Console', description: 'A free-to-play battle royale game with hero-based gameplay.', players: 60, cloudinary_public_id: '91Nqbl71UkL_mf5oaa' },
  { title: 'The Witcher 3: Wild Hunt', genre: 'RPG', platform: 'PC, Console', description: 'An open-world RPG where you play as Geralt of Rivia in a dark fantasy world.', players: 1, cloudinary_public_id: 'kh4MUIuMmHlktOHar3lVl6rY_smjmbw' },
  { title: 'Hollow Knight', genre: 'Metroidvania', platform: 'PC, Console', description: 'A challenging Metroidvania game set in a dark and atmospheric world.', players: 1, cloudinary_public_id: 'Hollow_Knight_first_cover_art.webp_gb4fxg' },
  { title: 'Red Dead Redemption 2', genre: 'Action-Adventure', platform: 'PC, Console', description: 'A western-themed action-adventure game with an immersive open world.', players: 1, cloudinary_public_id: 'Red_Dead_Redemption_II_e9egsr' },
  { title: 'Cyberpunk 2077', genre: 'RPG', platform: 'PC, Console', description: 'A dystopian RPG set in a futuristic world with deep storylines and high-tech gadgets.', players: 1, cloudinary_public_id: 'EGS_Cyberpunk2077_CDPROJEKTRED_S2_03_1200x1600-b1847981214ac013383111fc457eb9c5_zgwlkj' },
  { title: 'FIFA 21', genre: 'Sports', platform: 'PC, Console', description: 'The latest installment in the FIFA soccer game series.', players: 22, cloudinary_public_id: 'FIFA_21_Standard_Edition_Cover_wmk2ou' },
  { title: 'The Elder Scrolls V: Skyrim', genre: 'RPG', platform: 'PC, Console', description: 'An open-world RPG where you explore the world of Tamriel and fight dragons.', players: 1, cloudinary_public_id: 'The_Elder_Scrolls_V_Skyrim_cover_xnld7r' },
  { title: 'Minecraft Dungeons', genre: 'Action RPG', platform: 'PC, Console', description: 'An action RPG game set in the Minecraft universe with dungeon crawling elements.', players: 4, cloudinary_public_id: 'Minecraft_Dungeons_cover_art_ae09ky' },
  { title: 'Sekiro: Shadows Die Twice', genre: 'Action-Adventure', platform: 'PC, Console', description: 'A samurai action-adventure game with challenging combat and stealth mechanics.', players: 1, cloudinary_public_id: '71LPnKT7G2L._AC_UF1000_1000_QL80__lnvnpg' },
  { title: 'Dark Souls III', genre: 'Action RPG', platform: 'PC, Console', description: 'A challenging action RPG where you fight your way through dark and twisted worlds.', players: 1, cloudinary_public_id: 'product_95_r6gi6e' },
  { title: 'Doom Eternal', genre: 'Shooter', platform: 'PC, Console', description: 'A fast-paced first-person shooter with brutal combat and heavy metal music.', players: 1, cloudinary_public_id: 'images_umf5tj' },
  { title: 'Street Fighter V', genre: 'Fighting', platform: 'PC, Console', description: 'A competitive 2D fighting game with various characters and move sets.', players: 2, cloudinary_public_id: 'Street_Fighter_V_box_artwork_njjdsx' },
  { title: 'NBA 2K21', genre: 'Sports', platform: 'PC, Console', description: 'A basketball simulation game where you can play with real-life teams and stars.', players: 10, cloudinary_public_id: 'MV5BYjZhZjZiZjgtODg5Ni00ZWFlLWJmY2EtM2EyNTU1YmZkMzM0XkEyXkFqcGc_._V1_FMjpg_UX1000__oekp9g' },
  { title: 'Battlefield V', genre: 'Shooter', platform: 'PC, Console', description: 'A first-person shooter game set during World War II with large-scale battles.', players: 64, cloudinary_public_id: '11307NaQKaEHLyzE-IAHXHVsWuh7_eAY9dPZlcGPtMnNc3BkEAYKgLHjebcyIXFSIzC1dzoy1QTpVrWhhtRmXirdtR8PulXm_mjdzuv' },
  { title: 'Tetris', genre: 'Puzzle', platform: 'PC, Console, Mobile', description: 'A classic puzzle game where you stack falling blocks to clear lines.', players: 1, cloudinary_public_id: '61M3rDwh4qL._h1__uievuu' },
  { title: 'Fall Guys', genre: 'Party', platform: 'PC, Console', description: 'A fun and chaotic battle royale game where players compete in obstacle courses.', players: 60, cloudinary_public_id: 'fall-guys-ultimate-knockout_heep_gm35bj' },
  { title: 'The Last of Us Part II', genre: 'Action-Adventure', platform: 'PlayStation', description: 'A post-apocalyptic action-adventure game that focuses on survival and emotions.', players: 1, cloudinary_public_id: '5LbTaX8QJWSLq1x45rSZ2oyj_lozvp7' },
  { title: 'God of War', genre: 'Action-Adventure', platform: 'PlayStation', description: 'An action-adventure game following Kratos and his son in a world of Norse mythology.', players: 1, cloudinary_public_id: 'God_of_War_4_cover_p3uwch' },
  { title: 'Kingdom Hearts III', genre: 'Action RPG', platform: 'PlayStation, Xbox, PC', description: 'A Disney-themed RPG where Sora and his friends battle against darkness and villains.', players: 1, cloudinary_public_id: 'EGS_KINGDOMHEARTSIIIReMindDLC_SquareEnix_S6-1200x1600-54d8b062dc7488c71874fe2455d6c2bd_whe90f' },
  { title: 'Resident Evil 2', genre: 'Survival Horror', platform: 'PC, Console', description: 'A survival horror game with zombies and puzzles in a post-apocalyptic world.', players: 1, cloudinary_public_id: 'Resident_Evil_2_Remake_qje6xm' },
  { title: 'Valorant', genre: 'First-Person Shooter', platform: 'PC', description: 'A tactical first-person shooter with unique characters and strategic gameplay.', players: 10, cloudinary_public_id: 'download_n06nik' },
  { title: 'Pokemon Sword', genre: 'RPG', platform: 'Nintendo', description: 'A RPG game where you catch, train, and battle with Pokemon in the Galar region.', players: 2, cloudinary_public_id: '81_dhCRP9RL_rrbj5r' },
  { title: 'Pokémon Go', genre: 'AR', platform: 'Mobile', description: 'A mobile augmented reality game where you catch and train Pokémon in the real world.', players: 1, cloudinary_public_id: 'Pokemon_Go.svg_mggcfu' },
  { title: 'Hitman 3', genre: 'Stealth', platform: 'PC, Console', description: 'A stealth game where you play as a contract assassin completing missions around the world.', players: 1, cloudinary_public_id: 'Hitman_3_Packart_qzstpk' },
  { title: 'Super Smash Bros. Ultimate', genre: 'Fighting', platform: 'Nintendo', description: 'A crossover fighting game featuring characters from various Nintendo franchises.', players: 8, cloudinary_public_id: '815hF0mZBdL._AC_UF1000_1000_QL80__buwats' },
  { title: 'Little Big Planet 3', genre: 'Platformer', platform: 'PlayStation', description: 'A platform game where you create and play custom levels with adorable characters.', players: 4, cloudinary_public_id: 'LittleBigPlanet_3_boxart_mbzsok' },
  { title: 'Final Fantasy VII Remake', genre: 'RPG', platform: 'PlayStation', description: 'A remake of the classic Final Fantasy VII game with updated graphics and gameplay.', players: 1, cloudinary_public_id: 'FFVIIRemake_qm9cyy' },
  { title: 'No Man\'s Sky', genre: 'Sandbox', platform: 'PC, Console', description: 'A sci-fi exploration game set in a procedurally generated universe.', players: 1, cloudinary_public_id: 'cf5584c9702f961ec2b6e6e283599230b47606b0af728d6f_fxi8yf' },
  { title: 'The Sims 4', genre: 'Life Simulation', platform: 'PC, Console', description: 'A life simulation game where you control virtual people and their daily lives.', players: 1, cloudinary_public_id: 'Sims4_Rebrand_fapxpf' },
  { title: 'Forza Horizon 4', genre: 'Racing', platform: 'PC, Console', description: 'A racing game set in an open-world with dynamic seasons and beautiful scenery.', players: 1, cloudinary_public_id: 'Forza_Horizon_4_cover_aniih5' },
  { title: 'F1 2020', genre: 'Sports', platform: 'PC, Console', description: 'A racing simulation game based on Formula 1 racing with real-life cars and drivers.', players: 22, cloudinary_public_id: 'MV5BNWZkODk0ZDgtYjBiYy00MWQ3LTkyZjAtYjdlOTBlZDIyZGY2XkEyXkFqcGc_._V1__uzojal' },
  { title: 'Tom Clancy\'s Rainbow Six Siege', genre: 'Tactical Shooter', platform: 'PC, Console', description: 'A tactical shooter with destructible environments and team-based gameplay.', players: 10, cloudinary_public_id: 'Tom_Clancy_s_Rainbow_Six_Siege_cover_art_s1hmfp' },
  { title: 'Borderlands 3', genre: 'Shooter', platform: 'PC, Console', description: 'A looter-shooter game set in a colorful, humorous world with lots of guns and explosions.', players: 4, cloudinary_public_id: 'Borderlands_3_cover_art_jgooqr' },
  { title: 'Monster Hunter: World', genre: 'Action RPG', platform: 'PC, Console', description: 'An action RPG where you hunt large monsters and craft new weapons and armor.', players: 4, cloudinary_public_id: 'Monster_Hunter_World_cover_art_yyxfxw' },
  { title: 'World of Warcraft', genre: 'MMORPG', platform: 'PC', description: 'A massively multiplayer online role-playing game where players explore a vast world.', players: 40, cloudinary_public_id: 'World_of_Warcraft_lkh7gq' },
  { title: 'Star Wars Jedi: Fallen Order', genre: 'Action-Adventure', platform: 'PC, Console', description: 'An action-adventure game set in the Star Wars universe where you fight with lightsabers.', players: 1, cloudinary_public_id: 'MV5BYmExZDNiMTUtZDJlMS00ZGU0LWFjZmQtODhjNTBkNDliZGE5XkEyXkFqcGc_._V1_FMjpg_UX1000__taf5th' },
  { title: 'Mortal Kombat 11', genre: 'Fighting', platform: 'PC, Console', description: 'A brutal and gory fighting game with iconic characters and fatalities.', players: 2, cloudinary_public_id: 'Mortal_Kombat_11_cover_art_evmi1g' },
  { title: 'Watch Dogs: Legion', genre: 'Action-Adventure', platform: 'PC, Console', description: 'An open-world game set in London where you control multiple characters in a rebellion.', players: 1, cloudinary_public_id: 'OX5mEmwgRPeSQrhGFU3n4moZ_wc3dei' },
  { title: 'Hades', genre: 'Rogue-like', platform: 'PC, Console', description: 'A rogue-like action game set in the Greek Underworld, where you fight your way out of Hades.', players: 1, cloudinary_public_id: 'Hades_cover_art_qmceor' },
  { title: 'Fallout 4', genre: 'RPG', platform: 'PC, Console', description: 'An open-world RPG set in a post-apocalyptic world filled with mutants and factions.', players: 1, cloudinary_public_id: '91CVpBwQYfL_w5fvfe' }
]

games.each do |game_attrs|
  Game.find_or_create_by(title: game_attrs[:title]) do |game|
    game.genre = game_attrs[:genre]
    game.description = game_attrs[:description]
    game.platform = game_attrs[:platform]
    game.players = game_attrs[:players]
    game.cloudinary_public_id = game_attrs[:cloudinary_public_id]
  end
end

puts "🎮 Seeded #{Game.count} games!"
