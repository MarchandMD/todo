FactoryBot.define do
  factory :item do
    description { Faker::Lorem.words(number: 4).join(' ') }
    status { [0, 1, 2].sample }
  end
end
