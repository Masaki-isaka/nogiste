FactoryBot.define do
  factory :account do
    name { "MyText" }
    age { 1 }
    member { "MyText" }
    song { "MyText" }
    introduction { "MyText" }
    association :user, factory: :admin
  end
end
