# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Bike.destroy_all
User.destroy_all

10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: Faker::Internet.password(min_length: 8),
    email: Faker::Internet.email
  )
  user.save!
end

10.times do
  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', 'Childrens Bike', 'Unicycle'].sample,
    name: Faker::Name.name,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  bike.save!
end
