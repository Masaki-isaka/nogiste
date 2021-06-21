FactoryBot.define do
  factory :post do
    association :nogimasa
  end

  factory :post_with_image, class: Post do
    after(:create) do |post|
      create :image, post: post
    end
  end
end
