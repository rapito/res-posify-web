# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

Store.create name: Faker::Company.name, description: Faker::Company.catch_phrase, phone: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, tax_rate: 16.5

cats = [Category.create(name: 'Food'), Category.create(name: 'Drink')]

Faker::Number.between(10,50).times do
  Food.create name: Faker::Team.name, price: Faker::Number.decimal(2,2), description: Faker::Lorem.sentence, category: cats[0]
end

Faker::Number.between(5,10).times do
  Food.create name: Faker::Team.name, price: Faker::Number.decimal(2,2), description: Faker::Lorem.sentence, category: cats[1]
end

Faker::Number.between(3,7).times do
  Waiter.create(name: Faker::Name.first_name, lastname: Faker::Name.last_name);
end

Faker::Number.between(7,20).times do
  Table.create name: ("%s%s" % [Faker::Lorem.character, Faker::Number.digit]), capacity: Faker::Number.between(2, 15), indoor: (Faker::Number.between(0, 10) > 5)
end
