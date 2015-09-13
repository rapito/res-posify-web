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
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.string   "email",      limit: 255
    t.date     "birthday"
    t.string   "phone",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.decimal  "price",                     precision: 10
    t.text     "description", limit: 65535
    t.integer  "category_id", limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "foods", ["category_id"], name: "index_foods_on_category_id", using: :btree

  create_table "foods_orders", id: false, force: :cascade do |t|
    t.integer "order_id", limit: 4, null: false
    t.integer "food_id",  limit: 4, null: false
    t.boolean "returned", limit: 1
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "discount",              precision: 10
    t.decimal  "brute",                 precision: 10
    t.decimal  "net",                   precision: 10
    t.boolean  "payed",       limit: 1
    t.datetime "payed_at"
    t.integer  "customer_id", limit: 4
    t.integer  "waiter_id",   limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  add_index "orders", ["waiter_id"], name: "index_orders_on_waiter_id", using: :btree

  create_table "orders_tables", id: false, force: :cascade do |t|
    t.integer "order_id", limit: 4, null: false
    t.integer "table_id", limit: 4, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "phone",       limit: 255
    t.string   "address",     limit: 255
    t.decimal  "tax_rate",                  precision: 10
    t.string   "website",     limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.decimal  "capacity",               precision: 10
    t.boolean  "indoor",     limit: 1
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "waiters", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "foods", "categories"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "waiters"
end
