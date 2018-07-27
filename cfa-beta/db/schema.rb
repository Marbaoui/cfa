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

ActiveRecord::Schema.define(version: 20180727111830) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
  end

  create_table "formes", force: :cascade do |t|
    t.string "forme_p"
    t.string "forme_full_name"
  end

  create_table "products", force: :cascade do |t|
    t.string "name_p"
    t.integer "barcode_p"
    t.string "laboratory_p"
    t.string "type_p"
    t.integer "social_security_reimbursement_rate_p"
    t.integer "scale_margin_percent_p"
    t.integer "average_margin_percent_p"
    t.integer "TVA_percent_p"
    t.integer "PPV_p"
    t.string "PPH_p"
    t.string "DCI_p"
    t.datetime "expired_date_p"
    t.datetime "created_at_p"
    t.datetime "updated_at_p"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name"
    t.integer "number_R"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.integer "postal_code"
    t.integer "gsm"
    t.integer "tel"
    t.string "email"
    t.date "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "role"
    t.string "id_campany"
    t.string "city_p"
    t.string "address_p"
    t.string "postal_code_p"
  end

  create_table "stock", force: :cascade do |t|
    t.string "name_p"
    t.integer "provider_name_p"
    t.string "aisle_p"
    t.string "stock_coverage"
    t.integer "quantity_p"
    t.datetime "created_at_s"
    t.datetime "updated_at_s"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
  end

end
