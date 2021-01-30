FactoryBot.define do
  factory :nogimasa do
    username  { "テストユーザー" }
    password { "password" }  
    admin {false}
  end
  factory :admin, class: Nogimasa do
    username {"管理人"}
    password {"admin"}
    admin {true}
  end
end
