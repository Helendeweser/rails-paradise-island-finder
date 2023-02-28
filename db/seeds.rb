# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Island.destroy_all


image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1677592969/atlantis-boble_f9qfzt.jpg")

island = Island.new(
  name: "shutter",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  size: 975,
  price: 10_764
)
island.photo.attach(io: image, filename: "atlantis", content_type: "image/png")
island.save
puts "Creating island #{island.id}"



image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1677592893/white_20island.jpg_cysxjp.jpg")

island = Island.new(
  name: "Banana Haven",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  size: 1005,
  price: 16_764
)
island.photo.attach(io: image, filename: "volcan", content_type: "image/png")
island.save
puts "Creating island #{island.id}"



image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1677592868/5fac411930afb_oz4kkf.jpg")

island = Island.new(
  name: "Sweetfish Retreat",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  size: 500,
  price: 4964
)
island.save
island.photo.attach(io: image, filename: "bahamas", content_type: "image/png")
puts "Creating island #{island.id}"



image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1677592820/baron_island_025_w5yepd.jpg")

island = Island.new(
  name: "Ilan",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  size: 3000,
  price: 19_646
)
island.save
island.photo.attach(io: image, filename: "barond island", content_type: "image/png")
puts "Creating island #{island.id}"



image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1677592791/th_ifxd9a.jpg")

island = Island.new(
  name: "Goat",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  size: 1930,
  price: 12_646
)
island.save
island.photo.attach(io: image, filename: "maldives", content_type: "image/png")
puts "Creating island #{island.id}"




image = URI.open("https://wallpapercave.com/wp/wp5166915.jpg")

island = Island.new(
  name: "Pedro's",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  size: 300,
  price: 1046
)
island.save
island.photo.attach(io: image, filename: "small island", content_type: "image/png")
puts "Creating island #{island.id}"
