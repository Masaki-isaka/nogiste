# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Nogimasa.create!(
    username: "管理人",
    email: "admin0501@admin.jp",
    password: "admin0530",
    password_confirmation: "admin0530",
    admin: true
)
