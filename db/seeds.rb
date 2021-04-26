# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Flats DataBase...'
Flat.destroy_all
puts 'DataBase is clean'

3.times do
  flat = Flat.create(
    name: Faker::Space.star_cluster,
    address: Faker::Address.street_address,
    description: Faker::JapaneseMedia::StudioGhibli.quote,
    source: "https://source.unsplash.com/350x180/?house",
    price_per_night: rand(350),
    number_of_guest: rand(3)
  )
  puts "#{flat.name} has been created"
end
