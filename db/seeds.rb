# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Stage.destroy_all
User.destroy_all

user = User.create!(email: "prasith@shaker.com", password: "password")

stages_attributes = [
  {
    name: "The Kitchen",
    address: "Leicester",
    price: 1000,
    capacity: 150,
    user: user
  },

  {
    name: "Olympia",
    address: "Paris",
    price: 10000,
    capacity: 1996,
    user: user
  },

  {
    name: "La Cigale",
    address: "Paris",
    price: 8000,
    capacity: 1500,
    user: user
  },

  {
    name: "La Grange",
    address: "Nantes",
    price: 1000,
    capacity: 200,
    user: user
  },

  {
    name: "La Cantine",
    address: "Lille",
    price: 5000,
    capacity: 800,
    user: user
  },

  {
    name: "L'Equinox",
    address: "Paris",
    price: 6000,
    capacity: 1200,
    user: user
  }
]

Stage.create!(stages_attributes)
