require "rails_helper"

RSpec.describe "destroy_account", type: :request do
    describe "ユーザー一覧機能", type: :system do
        before do
          user_admin=FactoryBot.create(:nogimasa, username: "管理人", password: "admin", admin: true)
          user_a=FactoryBot.create(:nogimasa, username: "ユーザーA", password: "password", admin: false)
          @nogizaka=FactoryBot.create(:nogizaka, name: "MyText", age:1, member: "MyText", song: "MyText", introduction: "MytText", nogimasa: user_a)
        end
    
        context "管理人がログインしている時" do
          before do
            visit nogitops_index_path
            fill_in "session_username", with: "管理人"
            fill_in "session_password", with: "admin"
            click_button "ログイン"
          end
    
          it "管理人は他のアカウントを削除できる" do
            expect{ @nogizaka.destroy }.to change{Nogizaka.count}.from(1).to(0)
          end
        end
    end    
end