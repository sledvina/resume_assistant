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

ActiveRecord::Schema.define(version: 20140513174510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activity_entries", force: true do |t|
    t.string   "position"
    t.string   "organization"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "description"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activity_entries", ["resume_id"], name: "index_activity_entries_on_resume_id", using: :btree

  create_table "education_entries", force: true do |t|
    t.string   "school"
    t.string   "graduation_date"
    t.string   "degree"
    t.string   "major"
    t.string   "gpa"
    t.string   "accolades"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "education_entries", ["resume_id"], name: "index_education_entries_on_resume_id", using: :btree

  create_table "entries", force: true do |t|
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entries", ["resume_id"], name: "index_entries_on_resume_id", using: :btree

  create_table "resumes", force: true do |t|
    t.string   "resume_name"
    t.date     "date_created"
    t.string   "user_name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resumes", ["user_id"], name: "index_resumes_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_entries", force: true do |t|
    t.string   "Position"
    t.string   "Company"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "description"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_entries", ["resume_id"], name: "index_work_entries_on_resume_id", using: :btree

end
