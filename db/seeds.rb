# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

puts "seeding ingredients"
Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)


ingredients["drinks"].each do |item|

  Ingredient.create!(
    name: item["strIngredient1"]
  )
end


puts "destroy cocktails"
Cocktail.destroy_all

Cocktail.create!(
  name: "AM",
  photo: File.open(File.join(Rails.root, "app/assets/images/am.jpg"))
  )
Cocktail.create!(
  name: "Com Truise",
  photo: File.open(File.join(Rails.root, "app/assets/images/com.jpg"))
  )
Cocktail.create!(
  name: "Casino",
  photo: File.open(File.join(Rails.root, "app/assets/images/casino.jpg"))
  )
Cocktail.create!(
  name: "Joe Pesci",
  photo: File.open(File.join(Rails.root, "app/assets/images/pesci.jpg"))
  )
Cocktail.create!(
  name: "BRMC",
  photo: File.open(File.join(Rails.root, "app/assets/images/brando.jpg"))
  )
Cocktail.create!(
  name: "White Russian",
  photo: File.open(File.join(Rails.root, "app/assets/images/the_dude.jpeg"))
  )
Cocktail.create!(
  name: "in the tube",
  photo: File.open(File.join(Rails.root, "app/assets/images/russel.png"))
  )
Cocktail.create!(
  name: "Gladiator",
  photo: File.open(File.join(Rails.root, "app/assets/images/reed.jpg"))
  )
Cocktail.create!(
  name: "1st Rule",
  photo: File.open(File.join(Rails.root, "app/assets/images/tyler.jpg"))
  )


puts "finished"
