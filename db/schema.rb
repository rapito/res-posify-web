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

ActiveRecord::Schema.define(version: 20150913154027) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.date     "birthday"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "foods", ["category_id"], name: "index_foods_on_category_id"

  create_table "foods_orders", id: false, force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "food_id",  null: false
    t.boolean "returned"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "discount"
    t.decimal  "brute"
    t.decimal  "net"
    t.boolean  "payed"
    t.datetime "payed_at"
    t.integer  "customer_id"
    t.integer  "waiter_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"
  add_index "orders", ["waiter_id"], name: "index_orders_on_waiter_id"

  create_table "orders_tables", id: false, force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "table_id", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "phone"
    t.string   "address"
    t.decimal  "tax_rate"
    t.string   "website"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string   "name"
    t.decimal  "capacity"
    t.boolean  "indoor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "waiters", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
