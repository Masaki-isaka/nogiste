require "rails_helper"

describe "画像投稿機能", type: :system do
  user_a=FactoryBot.build(:user, username: "ユーザーA", password: "password", admin: false)
  account_a=FactoryBot.build(:account, name: "MyText", age:1, member: "MyText", song: "MyText", introduction: "MytText", user: user_a)
  
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
    visit posts_new_konno_path
    attach_file "images[file][]", "/home/masaki/nogiste/spec/fixtures/test.jpg"
    click_on "投稿"
    expect(page).to change {current_path}.to("http://localhost:3000/posts/2012/konno")
  end
end

        
