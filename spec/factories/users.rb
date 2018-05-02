FactoryBot.define do
  factory :user do
    name                Faker::LordOfTheRings.character
    email               Faker::Internet.unique.free_email
    password_digest     Faker::LordOfTheRings.location
  end
end
