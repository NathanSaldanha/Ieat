# This will guess the User class
FactoryBot.define do
  factory :restaurante do
    name {Faker::Games::Pokemon.name}
    address {Faker::Games::Pokemon.location}
  end
end