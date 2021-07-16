require "rails_helper"

describe "画像投稿機能", type: :system do
  let(:user_a){ FactoryBot.create(:nogimasa, username: "ユーザーA", password: "password", admin: false) }
  let(:account_a){ FactoryBot.create(:nogizaka, name: "MyText", age:1, member: "MyText", song: "MyText", introduction: "MytText", nogimasa: user_a) }
  
  before do
    visit nogitops_index_path
    fill_in "session_username", with: "ユーザーA"
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

  it "ユーザーAは画像投稿をすることができる" do
    post=FactoryBot.build(:post)
    post.valid?
    expect(post).to be_valid
  end
end

        
