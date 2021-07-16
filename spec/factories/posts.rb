FactoryBot.define do
  factory :post do
    nogimasa{FactoryBot.create(:nogimasa)}

    after(:build) do |post|
      FactoryBot.build(:image, post:post)
    end
  end
end
