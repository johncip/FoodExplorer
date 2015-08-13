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

ActiveRecord::Schema.define(version: 20150813223320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "list_id"
    t.integer  "user_id"
    t.boolean  "favorite",      default: false, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "listings", ["list_id"], name: "index_listings_on_list_id", using: :btree
  add_index "listings", ["restaurant_id", "list_id"], name: "index_listings_on_restaurant_id_and_list_id", unique: true, using: :btree
  add_index "listings", ["restaurant_id"], name: "index_listings_on_restaurant_id", using: :btree
  add_index "listings", ["user_id"], name: "index_listings_on_user_id", using: :btree

  create_table "lists", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title",                      null: false
    t.boolean  "favorite",   default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "lists", ["title"], name: "index_lists_on_title", using: :btree
  add_index "lists", ["user_id"], name: "index_lists_on_user_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "yelp_id",        null: false
    t.string   "name",           null: false
    t.string   "city",           null: false
    t.string   "state",          null: false
    t.string   "zip"
    t.string   "address"
    t.string   "hood"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "url"
    t.string   "image_url"
    t.float    "rating"
    t.string   "rating_img_url"
    t.boolean  "is_closed"
  end

  add_index "restaurants", ["rating"], name: "index_restaurants_on_rating", using: :btree
  add_index "restaurants", ["yelp_id"], name: "index_restaurants_on_yelp_id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "listings", "lists"
  add_foreign_key "listings", "restaurants"
  add_foreign_key "listings", "users"
  add_foreign_key "lists", "users"
end
