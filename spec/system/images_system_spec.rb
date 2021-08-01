require "rails_helper"

describe "画像投稿機能", type: :system do

  before do
    user=FactoryBot.build(:user)
    account_a=FactoryBot.build(:account)
    post=FactoryBot.build(:post)
    image=FactoryBot.build(:image)
  end
  
  context "ユーザーがログインしているとき" do
    before do
      visit nogitops_path
      fill_in "session_username", with: "username_1"
      fill_in "session_password", with: "password"
      click_button "ログイン"
    end
    
    it "ライブ写真共有ページへ遷移できる" do
      visit posts_path
      expect(page).to have_content("2012")
    end

    it "2012ページへ遷移できる" do
      visit posts_2012_path
      expect(page).to have_content("ライブ写真共有~2012~")
    end

    it "Zepp Liveページへ遷移できる" do
      visit posts_2012_konno_path
      expect(page).to have_content("Zepp Namba")
    end

    it "投稿ページへ遷移できる" do
      visit posts_new_konno_path
      expect(page).to have_content("投稿")
    end

    it "ユーザーは画像投稿をすることができる" do
      visit posts_new_konno_path
      attach_file "images[file][]", "C:\\Users\\ldist\\Documents\\test.jpg"
      click_button("投稿")
      expect(page).to change {current_path}.to("http://localhost:3000/posts/2012/konno")
    end
  end
end

        
