require "rails_helper"

RSpec.describe "UserAuthentications", type: :request do
    let(:nigimasa) {FactoryBot.create(:nogimasa)}
    let(:nogimasa_params) {FactoryBot.attributes_for(:nogimasa)}

    describe "ログイン" do
        context "パラメータが妥当な場合" do
            it "リクエストが成功すること" do
               post nogimasa_registration_path, params: {nogimasa: nogimasa_params}
               expect(response.status).to eq 302
            end

            it "createが成功すること" do
                expect do
                    post nogimasa_registration_path params: {nogimasa: nogimasa_params}
                end.to change(Nogimasa, :count).by 1
            end
        end
    end
end
