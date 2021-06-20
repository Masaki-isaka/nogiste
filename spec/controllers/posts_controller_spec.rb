require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "ライブ写真共有" do
    it "postテーブルとimageテーブルを同時保存" do
      params={ images_attributes: [FactoryBot.attributes_for(:image)] }
      expect{
        post :create,
        post: FactoryBot.attributes_for( :post ).merge( params )
        }.to change( Post, :count).by(1).and change( Image, :count).by(1)
    end
  end
end
