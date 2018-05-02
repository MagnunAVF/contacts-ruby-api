FactoryBot.define do
  factory :contact do
    name    Faker::TheFreshPrinceOfBelAir.unique.character
    email   Faker::Internet.unique.free_email
  end
end
