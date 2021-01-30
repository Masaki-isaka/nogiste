require 'rails_helper'

RSpec.feature "Patches", type: :feature do
  scenario "patch test" do
    post=FactoryBot.create( :post_with_image)
    expect( Post.count).to eq 1
    expect( Image.count).to eq 1
  end
end
