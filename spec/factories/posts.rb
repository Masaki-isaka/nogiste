FactoryBot.define do
  factory :post do
    user{FactoryBot.create(:user)}

    after(:build) do |post|
      post.images << FactoryBot.build(:image, post: post)
    end
  end
end
