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

ActiveRecord::Schema.define(version: 20170503062603) do

  create_table "categories", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "category_name"
    t.string   "subcategory"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.integer  "delivery_id"
    t.integer  "delivery_type"
    t.integer  "user_id_id"
    t.integer  "listing_id_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["listing_id_id"], name: "index_deliveries_on_listing_id_id"
    t.index ["user_id_id"], name: "index_deliveries_on_user_id_id"
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "listing_id"
    t.text     "description"
    t.integer  "condition_id_id"
    t.integer  "card_number"
    t.string   "card_name"
    t.text     "card_set"
    t.integer  "category_id_id"
    t.integer  "subcategory_id_id"
    t.integer  "delivery_id_id"
    t.decimal  "price"
    t.integer  "trade_id_id"
    t.integer  "seller_id_id"
    t.integer  "user_id_id"
    t.integer  "stripe_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["category_id_id"], name: "index_listings_on_category_id_id"
    t.index ["condition_id_id"], name: "index_listings_on_condition_id_id"
    t.index ["delivery_id_id"], name: "index_listings_on_delivery_id_id"
    t.index ["seller_id_id"], name: "index_listings_on_seller_id_id"
    t.index ["subcategory_id_id"], name: "index_listings_on_subcategory_id_id"
    t.index ["trade_id_id"], name: "index_listings_on_trade_id_id"
    t.index ["user_id_id"], name: "index_listings_on_user_id_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "listing_id_id"
    t.integer  "user_id_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["listing_id_id"], name: "index_profiles_on_listing_id_id"
    t.index ["user_id_id"], name: "index_profiles_on_user_id_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.integer  "subcategory_id"
    t.string   "subcategory_name"
    t.integer  "category_id_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["category_id_id"], name: "index_subcategories_on_category_id_id"
  end

  create_table "trades", force: :cascade do |t|
    t.integer  "trade_type"
    t.integer  "trade_id"
    t.integer  "buyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
