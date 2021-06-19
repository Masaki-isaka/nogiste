require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "#create" do
    before do
      @nogimasa=FactoryBot.create(:nogimasa)
    end

    it "画像URLがモデルに格納される" do
      post=FactoryBot.build(:post)
      post.valid?
      expect(post).to be_valid
    end
  end
end
