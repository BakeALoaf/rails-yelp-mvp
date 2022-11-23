# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Creating restaurants..."
hardtock = { name: "HardRock Cafe", address: "7 Boundary St, London E2 7JE", phone_number: "04030068480", category: "french"  }
dominoes =  { name: "Dominoes Pizza", address: "Spaldingstraße 110, 20097 Hamburg", phone_number: " 04065598800", category: "italian" }
balkans =  { name: "Balkan Restaurant Auszeit", address: "Hüllenkoppel 56, 22149 Hamburg", phone_number: "04067391007", category: "belgian" }
hofbrau =  { name: "Hofbrau", address: "Esplanade 6, 20354 Hamburg", phone_number: "04034993838", category: "japanese" }
lemon =  { name: "Lemon Grass Scent", address: "Wandsbeker Marktstraße 47, 22041 Hamburg", phone_number: "04060953333", category: "chinese" }


[hardtock, dominoes, balkans, hofbrau, lemon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
