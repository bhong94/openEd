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

ActiveRecord::Schema.define(version: 2019_11_25_105215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chats", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "studentName"
    t.string "mentorName"
    t.index ["mentor_id"], name: "index_chats_on_mentor_id"
    t.index ["student_id"], name: "index_chats_on_student_id"
  end

  create_table "mentors", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.text "bio"
    t.money "hourlyWage", scale: 2
    t.string "collegeName"
    t.string "major"
    t.string "collegeYear"
    t.binary "resume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "subjects", default: [], array: true
    t.bigint "user_id_id"
    t.string "specialty"
    t.index ["user_id_id"], name: "index_mentors_on_user_id_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "chat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "author"
    t.index ["chat_id"], name: "index_messages_on_chat_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.money "budget", scale: 2
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "subjects", default: [], array: true
    t.bigint "user_id_id"
    t.string "weakestSubject"
    t.string "favoriteSubject"
    t.index ["user_id_id"], name: "index_students_on_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "isMentor", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chats", "mentors"
  add_foreign_key "chats", "students"
  add_foreign_key "mentors", "users", column: "user_id_id"
  add_foreign_key "messages", "chats"
  add_foreign_key "students", "users", column: "user_id_id"
end
