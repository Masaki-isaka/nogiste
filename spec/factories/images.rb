FactoryBot.define do
  factory :image do
    file { "https://nogi-masa-resized.s3.ap-northeast-1.amazonaws.com/" }
    place { "MyText" }
    post nil
  end
end
