require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ユーザー登録" do
    before do
      user_a=FactoryBot.create(:user)
    end
    it "同じユーザー名は登録できない" do
      another_user=FactoryBot.build(:user, username: "username_1")
      another_user.valid?
      expect(another_user.errors.full_messages).to include("ユーザー名はすでに存在します")
    end
  end
end
