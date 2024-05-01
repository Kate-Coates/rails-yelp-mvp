# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
golden_dragon = { name: "Golden Dragon", address: "123 Main St", phone_number: "+1234567890", category: "chinese" },
pasta_palace = { name: "Pasta Palace", address: "456 Elm St", phone_number: "+1234567891", category: "italian" },
sushi_bar = { name: "Sushi Bar", address: "789 Oak St", phone_number: "+1234567892", category: "japanese" },
le_petit_bistro = { name: "Le Petit Bistro", address: "101 Maple St", phone_number: "+1234567893", category: "french" },
belgian_waffle_house = { name: "Belgian Waffle House", address: "246 Pine St", phone_number: "+1234567894", category: "belgian" }


[golden_dragon, pasta_palace, sushi_bar, le_petit_bistro, belgian_waffle_house].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
