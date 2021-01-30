FactoryBot.define do
  factory :nogizaka do
    name { "MyText" }
    age { 1 }
    member { "MyText" }
    song { "MyText" }
    introduction { "MyText" }
    association :nogimasa, factory: :admin
  end
end
