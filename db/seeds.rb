# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.destroy_all
Sandwich.destroy_all
Ingredient.destroy_all
Restaurant.destroy_all
Stock.destroy_all
SandwichIngredient.destroy_all

10.times do 
   user = User.create(
        name: Faker::Name.first_name,
        surname: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone_number: Faker::PhoneNumber.cell_phone,
        age: rand(15..85)
    )

    sandwich = Sandwich.create(
        name: Faker::Food.dish + " sandwich",
        user_id: user.id
    )

    ingredient = Ingredient.create(
        name: Faker::Food.ingredient,
        quantity: rand(0..50)
    )

    SandwichIngredient.create(
        sandwich_id: sandwich.id,
        ingredient_id: ingredient.id
    )

    restaurant = Restaurant.create(
        name: Faker::Restaurant.name,
        location: Faker::Address.city
    )

    Stock.create(
        restaurant_id: restaurant.id,
        ingredient_id: ingredient.id,
        count: rand(0..40)
    )
end