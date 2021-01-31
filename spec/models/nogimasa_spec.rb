require 'rails_helper'

RSpec.describe Nogimasa, type: :model do
  describe "ユーザー登録" do
    before do
      @nogimasa=FactoryBot.build(:nogimasa)
    end
    it "同じユーザー名は登録できない" do
      @nogimasa.save
      another_nogimasa=FactoryBot.build(:nogimasa)
      another_nogimasa.username=@nogimasa.username
      another_nogimasa.valid?
      expect(another_nogimasa.errors.full_messages).to include("ユーザー名はすでに存在します")
    end
  end
end
