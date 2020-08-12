# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5 },
  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4 },
  { name: "Porthminster Beach Cafe", address: "St Ives, Cornwall", stars: 5 },
  { name: "Mary's Burger", address: "Sydney, Australia", stars: 4 },
  { name: "Yeye's", address: "Uluwatu, Bali, Indonesia", stars: 4 },
  { name: "Greenberry Cafe", address: "Primrose Hill, London", stars: 4 },
  { name: "Gokyuzu", address: "Green Lanes, London", stars: 5 }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
