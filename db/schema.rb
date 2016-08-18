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

ActiveRecord::Schema.define(version: 20160817224412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fans", force: :cascade do |t|
    t.string   "nation",                                 null: false
    t.boolean  "crazy"
    t.boolean  "loud_or_not",             default: true
    t.integer  "gold_medals_country_won"
    t.integer  "population"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string   "type_of_sport",                     null: false
    t.string   "team_name",                         null: false
    t.integer  "number_of_players"
    t.boolean  "good_bad",          default: false
    t.integer  "wins"
    t.string   "color"
    t.string   "nation"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

end
