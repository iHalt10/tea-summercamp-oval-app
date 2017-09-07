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

ActiveRecord::Schema.define(version: 20170906164402) do

  create_table "mentions", force: :cascade do |t|
    t.integer  "news_id"
    t.integer  "user_id"
    t.string   "content"
    t.integer  "sorena"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mentions", ["news_id"], name: "index_mentions_on_news_id"
  add_index "mentions", ["user_id"], name: "index_mentions_on_user_id"

  create_table "news", force: :cascade do |t|
    t.string   "sessionID"
    t.string   "title"
    t.string   "link"
    t.time     "putDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "news", ["sessionID"], name: "index_news_on_sessionID", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
