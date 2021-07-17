FactoryBot.define do
  factory :user do
    username  { "テストユーザー" }
    password { "password" }  
    admin {false}
  end
  factory :admin, class: User do
    username {"管理人"}
    password {"admin"}
    admin {true}
  end
end
