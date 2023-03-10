# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Island.destroy_all
User.destroy_all

User.create(email: "paul@email.com", password: "123456")
puts "Creating user #{User.first.id}..."

image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1677592969/atlantis-boble_f9qfzt.jpg")

island = Island.new(
  name: "Shutter",
  description: "Shutter is an underwater island, located in the depths of the ocean. With a diverse ecosystem of vibrant coral reefs, exotic fish, and other marine creatures, Shutter Island is a paradise for scuba divers and snorkelers. The island's unique geological formations create a stunning underwater landscape that is a wonder to behold. Explorers can swim through winding tunnels and caves, encountering dazzling displays of colors and shapes along the way. Shutter Island's aquatic environment also provides a vital habitat for a wide variety of marine life, making it an important destination for conservationists and scientists alike. If you're looking for an otherworldly experience beneath the waves, Shutter Island is a must-visit destination.",
  size: 975,
  price: 10_764,
  user_id: User.first.id,
  address: "07007 Palma, Illes Balears, Spanje"
)
island.photo.attach(io: image, filename: "atlantis", content_type: "image/png")
island.save!
puts "Creating island #{island.id}..."



image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1677592893/white_20island.jpg_cysxjp.jpg")

island = Island.new(
  name: "Banana Haven",
  description: "Banana Haven is a secluded paradise in the middle of the ocean, known for its stunning natural beauty and tranquil atmosphere. With lush tropical forests, white sandy beaches, and crystal-clear waters teeming with colorful marine life, Shutter Island is a haven for outdoor enthusiasts and nature lovers. The island also boasts a rich cultural heritage, with ancient ruins and traditional villages offering a glimpse into its fascinating history. Whether you're seeking adventure or relaxation, Banana Haven is the perfect destination for your next getaway.",
  size: 1005,
  price: 16_764,
  user_id: User.first.id,
  address: "ibiza, spain"
)
island.photo.attach(io: image, filename: "volcan", content_type: "image/png")
island.save
puts "Creating island #{island.id}..."



image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1677592868/5fac411930afb_oz4kkf.jpg")

island = Island.new(
  name: "Sweetfish Retreat",
  description: "Sweetfish Retreat is a serene island getaway, nestled in a peaceful corner of the world. With its verdant green forests, pristine beaches, and crystal-clear waters, Sweetfish Retreat is an idyllic escape from the hustle and bustle of modern life. The island's cozy bungalows and charming cottages offer visitors a comfortable place to rest and recharge, while the island's welcoming community ensures a warm and hospitable stay. Sweetfish Retreat is also known for its delicious cuisine, featuring fresh seafood and locally grown produce that will tantalize your taste buds. Whether you're looking for adventure or relaxation, Sweetfish Retreat is the perfect destination to unwind and reconnect with nature.",
  size: 500,
  price: 4964,
  user_id: User.first.id,
  address: "pilar de mola, spain"
)
island.photo.attach(io: image, filename: "bahamas", content_type: "image/png")
island.save
puts "Creating island #{island.id}..."



image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1677592820/baron_island_025_w5yepd.jpg")

island = Island.new(
  name: "Ilan",
  description: "Ilan Island is a remote and rugged paradise, known for its breathtaking natural beauty and adventurous spirit. The island's dramatic coastline features towering cliffs, hidden coves, and pristine beaches that are perfect for surfing, kayaking, and other water sports. The island's interior is equally stunning, with lush forests, cascading waterfalls, and majestic mountains that offer unparalleled hiking and camping opportunities. Despite its remote location, Ilan Island boasts a rich cultural heritage, with ancient ruins and traditional villages that offer a glimpse into its fascinating history. Whether you're seeking thrills, relaxation, or cultural exploration, Ilan Island is a destination that promises to leave you with unforgettable memories.",
  size: 3000,
  price: 19_646,
  user_id: User.first.id,
  address: "Ciutadella de Menorca, spain"
)
island.photo.attach(io: image, filename: "barond island", content_type: "image/png")
island.save
puts "Creating island #{island.id}..."



image = URI.open("https://res.cloudinary.com/dlyq7dzjx/image/upload/v1677592791/th_ifxd9a.jpg")

island = Island.new(
  name: "Goat",
  description: "Goat Island is a unique and charming destination, famous for its abundance of adorable and friendly goats that roam freely across the island. The goats have become an integral part of the island's culture, and visitors are often delighted to interact with these playful and curious creatures. In addition to its furry inhabitants, Goat Island also boasts stunning natural beauty, with picturesque beaches, crystal-clear waters, and verdant forests that are perfect for hiking and exploring. Visitors can enjoy a variety of activities on the island, from lounging on the beach to kayaking to snorkeling. Goat Island's relaxed and laid-back atmosphere makes it a perfect escape from the hustle and bustle of everyday life. Whether you're an animal lover or just seeking a peaceful getaway, Goat Island is a destination that promises to leave you feeling refreshed and rejuvenated.",
  size: 1930,
  price: 12_646,
  user_id: User.first.id,
  address: "corse, france"
)
island.photo.attach(io: image, filename: "maldives", content_type: "image/png")
island.save
puts "Creating island #{island.id}..."




image = URI.open("https://wallpapercave.com/wp/wp5166915.jpg")

island = Island.new(
  name: "Pedro's",
  description: "Pedro's island is a unique and innovative destination, owned by a passionate coding teacher, the island has been transformed into a haven for technology enthusiasts and learners. Visitors can take part in immersive coding bootcamps, workshops, and hackathons that provide a hands-on learning experience in a stunning tropical environment. Pedro's Island also boasts pristine beaches, crystal-clear waters, and lush forests, creating a serene and inspiring backdrop for learning and exploration. Visitors can enjoy a variety of activities on the island, from kayaking and snorkeling to hiking and wildlife observation. Whether you're seeking to expand your coding skills or simply looking for a memorable vacation, Pedro's Island is a destination that promises to leave you inspired and enriched.",
  size: 300,
  price: 1046,
  user_id: User.first.id,
  address: "sassari, italy"
)
island.photo.attach(io: image, filename: "small island", content_type: "image/png")
island.save
puts "Creating island #{island.id}..."



image = URI.open("https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1akOHg.img")

island = Island.new(
  name: "Second Micha??l's island",
  description: "Second Micha??l's Island is a breathtaking destination that offers the perfect blend of luxury and natural beauty. The island's stunning beaches, crystal-clear waters, and lush vegetation provide a serene backdrop for relaxation and adventure. Visitors can indulge in a variety of activities, from lounging on the beach to snorkeling, scuba diving, and sailing. The island's luxurious accommodations offer a five-star experience, with world-class amenities and exceptional service. Second Micha??l's Island also boasts a rich cultural heritage, with ancient ruins and cultural landmarks that tell the story of its fascinating history. Whether you're seeking a romantic getaway, a family vacation, or a destination wedding, Second Micha??l's Island is the perfect destination to create unforgettable memories.",
  size: 4200,
  price: 30046,
  user_id: User.first.id,
  address: "Atoll de Gnaviyani, Maldives"
)
island.photo.attach(io: image, filename: "small island", content_type: "image/png")
island.save
puts "Creating island #{island.id}..."


image = URI.open("https://cdn.wallpapersafari.com/71/28/1byPcC.jpg")

island = Island.new(
  name: "The Turquoise Refuge",
  description: "The Turquoise Refuge is a tranquil and serene island paradise, where visitors can escape the stresses of daily life and immerse themselves in the beauty of nature. The island's crystal-clear waters and stunning turquoise lagoon provide a stunning backdrop for relaxation and reflection, while its pristine beaches and lush vegetation offer endless opportunities for adventure and exploration. Visitors can enjoy a variety of activities on the island, from snorkeling and kayaking to hiking and wildlife observation. The island's secluded accommodations offer a peaceful retreat, with simple yet comfortable amenities that allow visitors to disconnect and recharge. The Turquoise Refuge is the perfect destination for those seeking a serene and rejuvenating escape from the modern world.",
  size: 2,
  price: 3046,
  user_id: User.first.id,
  address: "Port M??r, Highland, Scotland"
)
island.photo.attach(io: image, filename: "small island", content_type: "image/png")
island.save
puts "Creating island #{island.id}..."


image = URI.open("https://4.bp.blogspot.com/-8vRT3ILpMpQ/URoF53WpFvI/AAAAAAAAApE/3l0Rjh1dGV4/s1600/Maldives+Island+Top+Resorts.jpg")

island = Island.new(
  name: "Rivertawa Archipelago",
  description: "The Rivertawa Archipelago is a collection of idyllic islands nestled in the crystal-clear waters of the Bahamas. Each island in the archipelago offers its own unique charm, from stunning white-sand beaches to lush tropical forests and vibrant coral reefs. Visitors can indulge in a variety of water activities, from snorkeling and diving to fishing and sailing. The archipelago's pristine beaches offer the perfect setting for sunbathing and relaxation, while its vibrant culture and rich history provide a fascinating backdrop for exploration. The Rivertawa Archipelago is the ultimate destination for those seeking an unforgettable island escape, where natural beauty and cultural richness come together in perfect harmony.",
  size: 8628,
  price: 26046,
  user_id: User.first.id,
  address: "Nassau, New Providence, Bahamas"
)
island.photo.attach(io: image, filename: "small island", content_type: "image/png")
island.save
puts "Creating island #{island.id}..."
