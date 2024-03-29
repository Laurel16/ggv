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

ActiveRecord::Schema.define(version: 20181203183335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lawyer_translations", force: :cascade do |t|
    t.integer "lawyer_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "competences"
    t.string "competences_details"
    t.string "presentation"
    t.string "picture"
    t.string "languages"
    t.string "bar"
    t.string "course"
    t.string "phone"
    t.string "mail"
    t.string "vCard"
    t.string "pdf"
    t.string "address"
    t.string "status"
    t.string "picture_cache"
    t.string "competences_2"
    t.string "competences_3"
    t.index ["lawyer_id"], name: "index_lawyer_translations_on_lawyer_id"
    t.index ["locale"], name: "index_lawyer_translations_on_locale"
  end

  create_table "lawyers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "status"
    t.string "competences"
    t.string "competences_details"
    t.string "presentation"
    t.string "picture"
    t.string "languages"
    t.string "bar"
    t.string "course"
    t.string "address"
    t.string "phone"
    t.string "mail"
    t.string "vCard"
    t.string "pdf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "competences_2"
    t.string "competences_3"
  end

  create_table "post_translations", force: :cascade do |t|
    t.integer "post_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "category"
    t.text "content"
    t.string "illustration"
    t.datetime "date"
    t.string "place"
    t.string "illustration_cache"
    t.index ["locale"], name: "index_post_translations_on_locale"
    t.index ["post_id"], name: "index_post_translations_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "category"
    t.text "content"
    t.string "illustration"
    t.datetime "date"
    t.string "place"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
