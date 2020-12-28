# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_21_064825) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "results", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "semester_id", null: false
    t.bigint "subject_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["semester_id"], name: "index_results_on_semester_id"
    t.index ["student_id"], name: "index_results_on_student_id"
    t.index ["subject_id"], name: "index_results_on_subject_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "sem_name"
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_semesters_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "gender"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "sub_1"
    t.integer "marks_1"
    t.string "sub_2"
    t.integer "marks_2"
    t.string "sub_3"
    t.integer "marks_3"
    t.string "sub_4"
    t.integer "marks_4"
    t.string "sub_5"
    t.integer "marks_5"
    t.bigint "student_id", null: false
    t.bigint "semester_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["semester_id"], name: "index_subjects_on_semester_id"
    t.index ["student_id"], name: "index_subjects_on_student_id"
  end

  add_foreign_key "results", "semesters"
  add_foreign_key "results", "students"
  add_foreign_key "results", "subjects"
  add_foreign_key "semesters", "students"
  add_foreign_key "subjects", "semesters"
  add_foreign_key "subjects", "students"
end
