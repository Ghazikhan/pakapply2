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

ActiveRecord::Schema.define(version: 20151113035933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advertisements", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "advertisements", ["user_id"], name: "index_advertisements_on_user_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "city_name"
    t.integer  "institute_id"
    t.integer  "job_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "cities", ["institute_id"], name: "index_cities_on_institute_id", using: :btree
  add_index "cities", ["job_id"], name: "index_cities_on_job_id", using: :btree

  create_table "degrees", force: :cascade do |t|
    t.string   "degree_name"
    t.string   "degree_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string   "division_grade"
    t.integer  "obtaiend_marks"
    t.date     "years"
    t.integer  "user_id"
    t.integer  "institute_id"
    t.integer  "degree_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "educations", ["degree_id"], name: "index_educations_on_degree_id", using: :btree
  add_index "educations", ["institute_id"], name: "index_educations_on_institute_id", using: :btree
  add_index "educations", ["user_id"], name: "index_educations_on_user_id", using: :btree

  create_table "fields", force: :cascade do |t|
    t.string   "field_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutes", force: :cascade do |t|
    t.string   "institute_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "maximum_qualification"
    t.integer  "advertisement_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "jobs", ["advertisement_id"], name: "index_jobs_on_advertisement_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "organization_name"
    t.integer  "job_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "organizations", ["job_id"], name: "index_organizations_on_job_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_type"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "work_experiences", force: :cascade do |t|
    t.string   "work_type"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "user_id"
    t.integer  "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "work_experiences", ["field_id"], name: "index_work_experiences_on_field_id", using: :btree
  add_index "work_experiences", ["user_id"], name: "index_work_experiences_on_user_id", using: :btree

  add_foreign_key "advertisements", "users"
  add_foreign_key "cities", "institutes"
  add_foreign_key "cities", "jobs"
  add_foreign_key "educations", "degrees"
  add_foreign_key "educations", "institutes"
  add_foreign_key "educations", "users"
  add_foreign_key "jobs", "advertisements"
  add_foreign_key "organizations", "jobs"
  add_foreign_key "work_experiences", "fields"
  add_foreign_key "work_experiences", "users"
end
