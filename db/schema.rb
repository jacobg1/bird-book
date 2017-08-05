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

ActiveRecord::Schema.define(version: 20170805194622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guesses", force: :cascade do |t|
    t.string "guess_text"
    t.bigint "post_id"
    t.integer "score"
    t.index ["post_id"], name: "index_guesses_on_post_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "place_photo_url"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "photo_url"
    t.bigint "place_id"
    t.index ["place_id"], name: "index_posts_on_place_id"
  end

  add_foreign_key "guesses", "posts"
  add_foreign_key "posts", "places"
end
