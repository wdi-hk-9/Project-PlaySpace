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

ActiveRecord::Schema.define(version: 20151105042107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playspaces", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "district"
    t.string   "region"
    t.boolean  "bike_path"
    t.boolean  "merry_go_round"
    t.boolean  "play_structure"
    t.boolean  "seesaw"
    t.boolean  "slide"
    t.boolean  "swing"
    t.boolean  "carpark"
    t.boolean  "snack_shop"
    t.boolean  "wc"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "category_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.integer  "playspace_id"
    t.integer  "rating"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "username"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
