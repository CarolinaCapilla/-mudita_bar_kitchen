# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database'
Station.destroy_all

puts 'Creating new stations...'

stations = [
  Station.create!(
    name: "The Burger Kaiser",
    description: "This station includes everything you'll need to cook some bad ass burgers!"),
  Station.create!(
    name: "The Japannese Gigi",
    description: "This station includes anything you'll need to do amazing Japanese stuff"),
  Station.create!(
    name: "Vengeful veggies",
    description: "This station is for the sustainable vegetarian chefs"),
  Station.create!(
    name: "The Fornoven",
    description: "This station includes a high quality oven. Perfect for bakers and pizza makers"),
  Station.create!(
    name: "Boozy Station",
    description: "This is the station for the amazing bartenders!")
]

stations.each do |station|
  puts "Created #{station.name}"
end

puts 'Finished'










