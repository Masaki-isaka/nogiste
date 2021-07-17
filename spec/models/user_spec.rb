require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ユーザー登録" do
    before do
      @nogimasa=FactoryBot.build(:user)
    end
    it "同じユーザー名は登録できない" do
      @nogimasa.save
      another_user=FactoryBot.build(:user)
      another_user.username=@nogimasa.username
      another_user.valid?
      expect(another_user.errors.full_messages).to include("ユーザー名はすでに存在します")
    end
  end
end
