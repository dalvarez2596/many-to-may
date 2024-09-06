# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

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
