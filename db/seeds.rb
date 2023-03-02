puts "🌱 Seeding spices..."

# Seed your database here
require 'faker'

Pet.destroy_all
Pet.reset_pk_sequence

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
