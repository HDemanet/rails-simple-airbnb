# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all
flat1 = Flat.create!(
  name: "Cozy Apartment in Paris",
  address: "123 Rue de Paris, Paris, France",
  description: "A cozy and charming apartment located in the heart of Paris.",
  price_per_night: 120,
  number_of_guests: 4,
  picture_url: "https://plus.unsplash.com/premium_photo-1680100255906-09ffdc2eeaaf?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

flat2 = Flat.create!(
  name: "Modern Loft in New York",
  address: "456 Broadway, New York, USA",
  description: "A modern and spacious loft with beautiful views of the city.",
  price_per_night: 200,
  number_of_guests: 6,
  picture_url: "https://plus.unsplash.com/premium_photo-1670360414483-64e6d9ba9038?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

puts "Seeded #{Flat.count} flats."
