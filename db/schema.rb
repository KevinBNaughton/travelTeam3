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

ActiveRecord::Schema.define(version: 20190401211527) do

  create_table "blogs", force: :cascade do |t|
    t.string "image_url"
    t.string "name"
    t.date "startDate"
    t.date "endDate"
    t.integer "overallPrice"
    t.integer "numberAdults"
    t.integer "numberChildren"
    t.string "overallDetails"
    t.string "origin"
    t.string "destination"
    t.integer "flightPrice"
    t.string "flightDetails"
    t.integer "cruisePrice"
    t.string "cruiseDetails"
    t.integer "hotelPrice"
    t.integer "hotelBeds"
    t.string "hotelDetails"
    t.string "specialName"
    t.integer "specialPrice"
    t.string "specialDetails"
    t.boolean "postFacebook"
    t.boolean "package"
    t.string "notes"
    t.boolean "breakfast"
    t.boolean "fitness"
    t.boolean "smoking"
    t.boolean "swimming"
    t.boolean "parking"
    t.boolean "wifi"
    t.boolean "bar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "userName"
    t.string "email"
    t.date "startDate"
    t.date "endDate"
    t.integer "overallPrice"
    t.integer "numberAdults"
    t.integer "numberChildren"
    t.string "overallDetails"
    t.string "origin"
    t.string "destination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
