# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151116173404) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_enterprises", id: false, force: :cascade do |t|
    t.integer "enterprise_id"
    t.integer "category_id"
  end

  add_index "categories_enterprises", ["category_id"], name: "index_categories_enterprises_on_category_id"
  add_index "categories_enterprises", ["enterprise_id"], name: "index_categories_enterprises_on_enterprise_id"

  create_table "categories_preferences", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "preference_id"
  end

  add_index "categories_preferences", ["category_id"], name: "index_categories_preferences_on_category_id"
  add_index "categories_preferences", ["preference_id"], name: "index_categories_preferences_on_preference_id"

  create_table "enterprise_category_pictures", force: :cascade do |t|
    t.integer  "enterprise_id"
    t.integer  "category_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "enterprise_category_pictures", ["category_id"], name: "index_enterprise_category_pictures_on_category_id"
  add_index "enterprise_category_pictures", ["enterprise_id"], name: "index_enterprise_category_pictures_on_enterprise_id"

  create_table "enterprises", force: :cascade do |t|
    t.string   "name"
    t.integer  "rating_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "enterprises", ["rating_id"], name: "index_enterprises_on_rating_id"

  create_table "enterprises_users", id: false, force: :cascade do |t|
    t.integer "enterprise_id"
    t.integer "user_id"
  end

  add_index "enterprises_users", ["enterprise_id"], name: "index_enterprises_users_on_enterprise_id"
  add_index "enterprises_users", ["user_id"], name: "index_enterprises_users_on_user_id"

  create_table "messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musicians", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "url"
    t.integer  "user_id"
    t.integer  "enterprise_id"
    t.integer  "category_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "pictures", ["category_id"], name: "index_pictures_on_category_id"
  add_index "pictures", ["enterprise_id"], name: "index_pictures_on_enterprise_id"
  add_index "pictures", ["user_id"], name: "index_pictures_on_user_id"

  create_table "preferences", force: :cascade do |t|
    t.decimal  "budget"
    t.boolean  "musician"
    t.boolean  "band"
    t.boolean  "dj"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "preferences", ["category_id"], name: "index_preferences_on_category_id"
  add_index "preferences", ["user_id"], name: "index_preferences_on_user_id"

  create_table "ratings", force: :cascade do |t|
    t.decimal  "rate"
    t.integer  "enterprise_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "ratings", ["enterprise_id"], name: "index_ratings_on_enterprise_id"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.date     "wedding_date"
    t.string   "password_digest"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["user_id"], name: "index_users_on_user_id"

end
