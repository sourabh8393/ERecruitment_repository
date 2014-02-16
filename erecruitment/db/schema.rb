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

ActiveRecord::Schema.define(version: 20140216093947) do

  create_table "my_questions", force: true do |t|
    t.text     "question"
    t.string   "option_a"
    t.string   "option_b"
    t.string   "option_c"
    t.string   "option_d"
    t.string   "anwser"
    t.string   "question_type"
    t.string   "created_by"
    t.integer  "difficulty_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_questions", force: true do |t|
    t.text     "question"
    t.string   "option_a"
    t.string   "option_b"
    t.string   "option_c"
    t.string   "option_d"
    t.string   "anwser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ttest_questions", force: true do |t|
    t.text     "question"
    t.string   "option_a"
    t.string   "option_b"
    t.string   "option_c"
    t.string   "option_d"
    t.string   "anwser"
    t.string   "question_type"
    t.string   "created_by"
    t.integer  "difficulty_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "role"
    t.string   "name"
    t.string   "email_id"
    t.string   "password"
    t.string   "date_of_birth"
    t.string   "qualification"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
