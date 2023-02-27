# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Island.destroy_all

island = Island.new(
  name: "shutter",
  location: "England",
  size: 975,
  price: 10_764
)
island.save
puts "Creating island #{island.id}"

island = Island.new(
  name: "Banana Haven",
  location: "Bahamas",
  size: 1005,
  price: 16_764
)
island.save
puts "Creating island #{island.id}"

island = Island.new(
  name: "Sweetfish Retreat",
  location: "Groenland",
  size: 500,
  price: 4964
)
island.save
puts "Creating island #{island.id}"

island = Island.new(
  name: "Ilan",
  location: "Enen",
  size: 3000,
  price: 19_646
)
island.save
puts "Creating island #{island.id}"

island = Island.new(
  name: "Goat",
  location: "Japan",
  size: 1930,
  price: 12_646
)
island.save
puts "Creating island #{island.id}"

island = Island.new(
  name: "Pedro's",
  location: "Columbia",
  size: 300,
  price: 1046
)
island.save
puts "Creating island #{island.id}"
