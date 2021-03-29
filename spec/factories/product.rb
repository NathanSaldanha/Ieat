# This will guess the User class
FactoryBot.define do
  factory :product do
    name { Faker::Games::Pokemon.name}
    valor { rand(100) }
    restaurante
  end
end