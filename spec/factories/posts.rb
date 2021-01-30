FactoryBot.define do
  factory :post do
    nogimasa
  end

  factory :post_with_image, class: Post do
    nogimasa
    
    after( :create) do |post|
      create :image, post: post
    end
  end
end
