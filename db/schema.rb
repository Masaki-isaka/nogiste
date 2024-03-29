# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_17_100540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.text "name"
    t.integer "age"
    t.text "member"
    t.text "song"
    t.text "introduction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "favos", force: :cascade do |t|
    t.bigint "image_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_favos_on_image_id"
    t.index ["user_id"], name: "index_favos_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "file"
    t.bigint "post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "place", null: false
    t.index ["post_id"], name: "index_images_on_post_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "nogipost_id", null: false
    t.bigint "nogimasa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nogimasa_id"], name: "index_likes_on_nogimasa_id"
    t.index ["nogipost_id"], name: "index_likes_on_nogipost_id"
  end

  create_table "nogiimages", force: :cascade do |t|
    t.string "img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nogiposts", force: :cascade do |t|
    t.string "content"
    t.bigint "nogimasa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nogimasa_id"], name: "index_nogiposts_on_nogimasa_id"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username", default: "", null: false
    t.boolean "admin", default: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "favos", "images"
  add_foreign_key "favos", "users"
  add_foreign_key "images", "posts"
  add_foreign_key "likes", "nogiposts"
  add_foreign_key "likes", "users", column: "nogimasa_id"
  add_foreign_key "nogiposts", "users", column: "nogimasa_id"
  add_foreign_key "posts", "users"
end
