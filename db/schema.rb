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

ActiveRecord::Schema.define(version: 20151019212458) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.integer  "zip"
    t.string   "city"
    t.string   "state"
    t.integer  "phone"
    t.text     "description"
    t.string   "service"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "logo"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "coment"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "stars"
  end

  add_index "reviews", ["company_id"], name: "index_reviews_on_company_id"

end
