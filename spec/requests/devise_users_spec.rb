require "rails_helper"

RSpec.describe "UserAuthentications", type: :request do
    let(:user) {FactoryBot.create(:user)}
    let(:user_params) {FactoryBot.attributes_for(:user)}

    describe "ログイン" do
        context "パラメータが妥当な場合" do
            it "リクエストが成功すること" do
               post user_registration_path, params: {user: user_params}
               expect(response.status).to eq 302
            end

            it "createが成功すること" do
                expect do
                    post user_registration_path params: {user: user_params}
                end.to change(User, :count).by 1
            end
        end
    end
end
