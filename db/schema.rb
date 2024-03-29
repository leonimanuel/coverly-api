# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_19_173605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "blurb"
    t.string "link"
    t.boolean "public", default: false
  end

  create_table "cover_letters", force: :cascade do |t|
    t.string "name"
    t.string "body"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "company"
    t.string "position"
    t.index ["user_id"], name: "index_cover_letters_on_user_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "lower_case", null: false
    t.boolean "public", default: true
    t.index ["lower_case"], name: "index_keywords_on_lower_case", unique: true
    t.index ["name"], name: "index_keywords_on_name", unique: true
  end

  create_table "keywords_companies", force: :cascade do |t|
    t.bigint "keyword_id", null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_keywords_companies_on_company_id"
    t.index ["keyword_id"], name: "index_keywords_companies_on_keyword_id"
  end

  create_table "keywords_industries", force: :cascade do |t|
    t.bigint "keyword_id", null: false
    t.bigint "industry_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["industry_id"], name: "index_keywords_industries_on_industry_id"
    t.index ["keyword_id"], name: "index_keywords_industries_on_keyword_id"
  end

  create_table "keywords_positions", force: :cascade do |t|
    t.bigint "keyword_id"
    t.bigint "position_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["keyword_id"], name: "index_keywords_positions_on_keyword_id"
    t.index ["position_id"], name: "index_keywords_positions_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "keywords", default: [], array: true
    t.boolean "public", default: false
    t.integer "industry_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "auth_code"
  end

  add_foreign_key "cover_letters", "users"
  add_foreign_key "keywords_companies", "companies"
  add_foreign_key "keywords_companies", "keywords"
  add_foreign_key "keywords_industries", "industries"
  add_foreign_key "keywords_industries", "keywords"
end
