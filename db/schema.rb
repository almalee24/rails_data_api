# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_23_145438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "spans", force: :cascade do |t|
    t.string "unit"
    t.string "distance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicles", id: false, force: :cascade do |t|
    t.string "make"
    t.string "price"
    t.string "photo"
    t.string "model"
    t.string "id"
    t.text "colors", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "span_id"
    t.index ["span_id"], name: "index_vehicles_on_span_id"
  end

  add_foreign_key "vehicles", "spans"
end
