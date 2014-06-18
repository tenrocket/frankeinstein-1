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

ActiveRecord::Schema.define(version: 20140617190937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "attachment"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "challenge_image"
    t.string   "challenger"
    t.integer  "challenger_id"
  end

  create_table "challenges_interests", id: false, force: true do |t|
    t.integer "challenge_id"
    t.integer "interest_id"
  end

  create_table "comments", force: true do |t|
    t.string   "content"
    t.string   "commentable_type"
    t.integer  "commentable_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interests", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "interest_image"
  end

  create_table "interests_users", id: false, force: true do |t|
    t.integer "interest_id"
    t.integer "user_id"
  end

  create_table "points", force: true do |t|
    t.integer  "value"
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.integer  "submission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.string   "keywords"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "searchable_type"
    t.integer  "searchable_id"
  end

  create_table "submissions", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "image"
    t.string   "status"
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "winner",       default: false
  end

  create_table "user_challenges", force: true do |t|
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "description"
    t.string   "portfolio_item"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "title"
    t.string   "image"
    t.boolean  "admin"
  end

end
