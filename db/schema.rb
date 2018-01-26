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

ActiveRecord::Schema.define(version: 20180125153713) do

  create_table "homeworks", force: :cascade do |t|
    t.integer "student_id", default: 0, null: false
    t.integer "teacher_id", default: 0, null: false
    t.date "date", default: "2018-01-25", null: false
    t.boolean "flag", default: false, null: false
    t.string "content", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "progresses", force: :cascade do |t|
    t.integer "student_id", default: 0, null: false
    t.integer "teacher_id", default: 0, null: false
    t.date "date", default: "2018-01-26", null: false
    t.string "content", default: "", null: false
    t.string "comment", default: "", null: false
    t.integer "homework_id", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "grade"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
