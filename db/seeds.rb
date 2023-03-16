# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require "open-uri"
Booking.destroy_all
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

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3540&q=80")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1532298229144-0ec0c57515c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmljeWNsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1505705694340-019e1e335916?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJpY3ljbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1571333250630-f0230c320b6d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1596738141905-51e94b519d69?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1578509557315-37510239a203?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1872&q=80")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1575585269294-7d28dd912db8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1592419044706-39796d40f98c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=825&q=80")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1583467875263-d50dec37a88c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1561642445-b789b9a7e6f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1193&q=80")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!

  bike = Bike.new(
    bike_type: ['E-bike', 'Mountain Bike', 'Road Bike', "Children's Bike", 'Unicycle'].sample,
    name: Faker::Movies::StarWars.vehicle,
    price: Faker::Commerce.price(range: 5..150.0, as_string: false),
    location: Faker::Address.city,
    user_id: User.pluck(:id).sample
  )
  file = URI.open("https://images.unsplash.com/photo-1592745392512-6581adbbfc64?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80")
  bike.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  bike.save!
