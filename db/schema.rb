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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150217081255) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "blogs", ["user_id"], :name => "blogs_user_id_fk"

  create_table "comments", :force => true do |t|
    t.text     "description"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "comments", ["user_id"], :name => "comments_user_id_fk"

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypt"
    t.string   "salt"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_foreign_key "blogs", "users", name: "blogs_user_id_fk", dependent: :delete

  add_foreign_key "comments", "users", name: "comments_user_id_fk", dependent: :delete

end
