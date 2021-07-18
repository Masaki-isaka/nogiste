FactoryBot.define do
  factory :image do
    file { Rack::Test::UploadedFile.new(File.join(Rails.root,"spec/fixtures/files/test.jpg")) }
    place { "MyText" }
  end
end
