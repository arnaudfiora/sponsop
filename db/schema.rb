# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_21_105248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "less_12", default: false
    t.boolean "age_12_18", default: false
    t.boolean "age_19_25", default: false
    t.boolean "age_26_35", default: false
    t.boolean "age_36_45", default: false
    t.boolean "age_46_55", default: false
    t.boolean "age_56_65", default: false
    t.boolean "more_65", default: false
  end

  create_table "campaign_interests", force: :cascade do |t|
    t.bigint "campaign_id"
    t.bigint "interest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_campaign_interests_on_campaign_id"
    t.index ["interest_id"], name: "index_campaign_interests_on_interest_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "period"
    t.bigint "user_id"
    t.bigint "age_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "photo"
    t.index ["age_id"], name: "index_campaigns_on_age_id"
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "channel_interests", force: :cascade do |t|
    t.bigint "channel_id"
    t.bigint "interest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_channel_interests_on_channel_id"
    t.index ["interest_id"], name: "index_channel_interests_on_interest_id"
  end

  create_table "channels", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "gender"
    t.bigint "user_id"
    t.bigint "age_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["age_id"], name: "index_channels_on_age_id"
    t.index ["user_id"], name: "index_channels_on_user_id"
  end

  create_table "chat_rooms", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user1"
    t.string "user2"
    t.string "email"
    t.index ["user_id"], name: "index_chat_rooms_on_user_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "address"
    t.string "email"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contracts_on_user_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "chat_room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_room_id"], name: "index_messages_on_chat_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "messengers", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_messengers_on_user_id"
  end

  create_table "user_contracts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_user_contracts_on_contract_id"
    t.index ["user_id"], name: "index_user_contracts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "is_brand", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar", default: "http://www.baytekent.com/wp-content/uploads/2016/12/facebook-default-no-profile-pic1.jpg"
    t.string "company"
    t.text "description"
    t.text "requests"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
