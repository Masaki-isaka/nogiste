FactoryBot.define do
  factory :image do
    file { Rack::Test::UploadedFile.new(File.join(Rails.root, "spec/fixtures/Sing Out!.jpg"), "image/jpg") }
    post
    place { "MyText" }
  end
end
