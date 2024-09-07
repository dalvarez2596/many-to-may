puts "Creating the array and filling with players and teams"
players = []
100.times do
players << { name: Faker::Games::Dota.unique.player, team: Faker::Games::Dota.team }
end

puts "Filling the db with insert_all"
Player.insert_all(players)
puts "Data successfully loaded"

puts "Creating the array and filling with heros"
heros = []
56.times do
  hero_name = Faker::Games::Dota.unique.hero
  hero_format= hero_name.downcase.gsub(/[\s-]/, "_")
  quote = Faker::Games::Dota.quote(hero: hero_format)
heros << { name: hero_name, quote: quote }
end

puts "Filling the db with insert_all"
Hero.insert_all(heros)
puts "Data successfully loaded"

players_db = Player.all
heroes_db = Hero.all

35.times do
  HerosPlayer.create(player: players_db.sample, hero: heroes_db.sample)
end
