# This file should contain all the record creation needed to seed the database with its values
# This data can then be loaded with rake db:seed command


puts "🌱 Seeding spices..."

# Seed your database here
require 'faker'

Pet.destroy_all
Pet.reset_sequence_name

51.times do 
    Pet.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed, age: Faker::Creature::Dog.age, location: "NBO", img:"")
end

Pet.all.each do |pet|
    pet_image = RestClient.get('https://dog.ceo/api/breeds/image/random')
    pet_message = JSON.parse(pet_image)["message"]
    pet.update(
        img: pet_message
    )
end

puts "✅ Done seeding!"
