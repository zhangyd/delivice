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

ActiveRecord::Schema.define(version: 20140702094912) do

  create_table "carts", force: true do |t|
    t.integer  "user_id"
    t.string   "status"
    t.string   "delivery_date"
    t.string   "delivery_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts_items", id: false, force: true do |t|
    t.integer "cart_id", null: false
    t.integer "item_id", null: false
  end

  create_table "catagories", force: true do |t|
    t.string   "name"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorites", force: true do |t|
    t.integer  "store_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "unit"
    t.integer  "subcatagory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcatagories", force: true do |t|
    t.string   "name"
    t.integer  "catagory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
