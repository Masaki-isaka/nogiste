FactoryBot.define do
  factory :user do
    sequence(:username) {|n| "username_#{n}"}
    password { "password" }  
    admin {false}
  end
end
