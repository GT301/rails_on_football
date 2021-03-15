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

ActiveRecord::Schema.define(version: 2021_03_14_230027) do

  create_table "clubs", force: :cascade do |t|
    t.integer "club_id"
    t.string "club_name"
    t.string "code"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "league_id", null: false
    t.index ["league_id"], name: "index_clubs_on_league_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "league_name"
    t.integer "club_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rank"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "match_id"
    t.string "round"
    t.date "date"
    t.string "team1"
    t.string "team2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "league_id", null: false
    t.index ["league_id"], name: "index_matches_on_league_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "permalink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "clubs", "leagues"
  add_foreign_key "matches", "leagues"
end
