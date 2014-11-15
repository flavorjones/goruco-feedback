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

ActiveRecord::Schema.define(version: 20141114135923) do

  create_table "responses", force: true do |t|
    t.string   "years_using_ruby"
    t.string   "city"
    t.string   "state"
    t.string   "stay"
    t.text     "thoughts"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "talk_responses", force: true do |t|
    t.integer "talk_id"
    t.integer "response_id"
    t.integer "score"
    t.text    "comment"
  end

  add_index "talk_responses", ["response_id", "talk_id"], name: "index_talk_responses_on_response_id_and_talk_id"
  add_index "talk_responses", ["talk_id", "response_id"], name: "index_talk_responses_on_talk_id_and_response_id"

  create_table "talks", force: true do |t|
    t.string   "speaker"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
