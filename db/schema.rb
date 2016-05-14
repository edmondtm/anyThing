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

ActiveRecord::Schema.define(version: 20160509075300) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "cart_items", force: :cascade do |t|
    t.integer  "variation_id", limit: 4
    t.integer  "quantity",     limit: 4
    t.integer  "cart_id",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: :cascade do |t|
    t.string   "ip_address", limit: 255
    t.string   "session",    limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "variation_id",      limit: 4
    t.integer  "order_quantity",    limit: 4
    t.decimal  "order_unit_price",            precision: 10, scale: 2
    t.decimal  "order_total_price",           precision: 10, scale: 2
    t.integer  "order_id",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string   "order_status", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "order_status_id", limit: 255
    t.decimal  "order_subtotal",              precision: 10, scale: 2
    t.decimal  "order_tax",                   precision: 10, scale: 2
    t.decimal  "order_shipping",              precision: 10, scale: 2
    t.decimal  "order_total",                 precision: 10, scale: 2
    t.string   "order_number",    limit: 255
    t.integer  "user_id",         limit: 4
    t.integer  "vendor_id",       limit: 4
    t.string   "order_validity",  limit: 255
    t.string   "order_delivery",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name",        limit: 255
    t.string   "product_sku",         limit: 255
    t.string   "product_delivery",    limit: 255
    t.string   "product_price",       limit: 255
    t.string   "product_brand",       limit: 255
    t.text     "product_description", limit: 65535
    t.integer  "category_id",         limit: 4
    t.integer  "subcategory_id",      limit: 4
    t.integer  "vendor_id",           limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "subcategory_name", limit: 255
    t.integer  "category_id",      limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "user_name",              limit: 255
    t.string   "user_company",           limit: 255
    t.string   "user_shipping_address1", limit: 255
    t.string   "user_shipping_address2", limit: 255
    t.string   "user_shipping_city",     limit: 255
    t.string   "user_shipping_state",    limit: 255
    t.string   "user_shipping_zip",      limit: 255
    t.string   "user_billing_address1",  limit: 255
    t.string   "user_billing_address2",  limit: 255
    t.string   "user_billing_city",      limit: 255
    t.string   "user_billing_state",     limit: 255
    t.string   "user_billing_zip",       limit: 255
    t.string   "user_phone",             limit: 255
    t.string   "user_mobile",            limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "variations", force: :cascade do |t|
    t.string   "variation_name",     limit: 255
    t.string   "variation_sku",      limit: 255
    t.string   "variation_delivery", limit: 255
    t.decimal  "variation_price",                precision: 10, scale: 2
    t.integer  "product_id",         limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "variations", ["product_id"], name: "index_variations_on_product_id", using: :btree

  create_table "vendors", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "vendor_company",         limit: 255
    t.string   "vendor_address1",        limit: 255
    t.string   "vendor_address2",        limit: 255
    t.string   "vendor_city",            limit: 255
    t.string   "vendor_state",           limit: 255
    t.string   "vendor_zip",             limit: 255
    t.string   "vendor_pic",             limit: 255
    t.string   "vendor_phone",           limit: 255
    t.string   "vendor_mobile",          limit: 255
    t.string   "vendor_website",         limit: 255
  end

  add_index "vendors", ["email"], name: "index_vendors_on_email", unique: true, using: :btree
  add_index "vendors", ["reset_password_token"], name: "index_vendors_on_reset_password_token", unique: true, using: :btree

end
