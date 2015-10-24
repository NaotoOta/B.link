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

ActiveRecord::Schema.define(version: 20151024104137) do

  create_table "cloths", force: :cascade do |t|
    t.string   "name",                      limit: 255
    t.string   "beacon_identification_key", limit: 255
    t.integer  "user_id",                   limit: 4
    t.string   "url",                       limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "cloth_image",               limit: 255
  end

  add_index "cloths", ["user_id"], name: "index_cloths_on_user_id", using: :btree

  create_table "cloths_histories", force: :cascade do |t|
    t.integer  "cloth_id",   limit: 4
    t.integer  "history_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "cloths_histories", ["cloth_id"], name: "index_cloths_histories_on_cloth_id", using: :btree
  add_index "cloths_histories", ["history_id"], name: "index_cloths_histories_on_history_id", using: :btree

  create_table "histories", force: :cascade do |t|
    t.string   "location",   limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "histories", ["user_id"], name: "index_histories_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 255
    t.string   "profile_image",          limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "cloths", "users"
  add_foreign_key "cloths_histories", "cloths"
  add_foreign_key "cloths_histories", "histories"
  add_foreign_key "histories", "users"
end
