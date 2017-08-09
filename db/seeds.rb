# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Stage.destroy_all
User.destroy_all

user = User.create!(email: "admin@bookastage.com", password: "bookparis")

stages_attributes = [
  {
    name: "AccorHotels Arena",
    address: "8 boulevard de Bercy, 75012 Paris",
    city: "Paris",
    price: 1000,
    capacity: 150,
    user: user
  },

  {
    name: "Alhambra",
    address: "21 rue Yves Toudic, 75010 Paris",
    price: 10000,
    capacity: 1996,
    user: user
  },

  {
    name: "L'Alimentation générale",
    address: "64 rue Jean-Pierre Timbaud, 75011 Paris",
    city: "Paris",
    price: 8000,
    capacity: 1500,
    user: user
  },

  {
    name: "Atelier Charonne",
    address: "21 rue Charonne, 75011 Paris",
    city: "Paris",
    price: 1000,
    capacity: 200,
    user: user
  },

  {
    name: "Le Limonaire",
    address: "18 cité Bergère, 75009 Paris",
    city: "Paris",
    price: 5000,
    capacity: 800,
    user: user
  },

  {
    name: "Auditorium du Louvre",
    address: "Pyramide, 75001 Paris",
    city: "Paris",
    price: 6000,
    capacity: 1200,
    user: user
  },

    {
    name: "Auditorium du Louvre",
    address: "Pyramide (cour Napoléon), 75001 Paris",
    city: "Paris",
    price: 6000,
    capacity: 1200,
    user: user
  },

  {
    name: "Autour de midi et minuit",
    address: "11 rue Lepic, 75018 Paris",
    city: "Paris",
    price: 6000,
    capacity: 1200,
    user: user
  },

  {
    name: "Bourse du Travail",
    address: "205 place Guichard, 69003 Lyon",
    city: "Lyon",
    price: 6000,
    capacity: 1200,
    user: user
  },

  {
    name: "La Cocotte Minute",
    address: "4 rue de Belfort, 69004 Lyon",
    city: "Lyon",
    price: 6000,
    capacity: 1200,
    user: user
  },
]

Stage.create!(stages_attributes)
