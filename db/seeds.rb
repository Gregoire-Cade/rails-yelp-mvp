# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
tasfirin = { name: "Tasfirin", address: "138 Bethnal Green Road, London E2 6DG", category: "belgian" }
rosas = { name: "Rosas", address: "134 Liverpool St, London E2 7GF", category: "chinese" }
ekol = { name: "Ekol", address: "152A Bethnal Green Road, London E2 9DG", category: "french" }

[dishoom, pizza_east, tasfirin, rosas, ekol].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
