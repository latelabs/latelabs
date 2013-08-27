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

ActiveRecord::Schema.define(:version => 20130826230927) do

  create_table "applications", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contributions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "user_sender"
    t.integer  "user_receivers"
    t.integer  "project_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "projects", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "explanation"
    t.string   "tech"
    t.integer  "applicants"
    t.integer  "collaborators"
    t.integer  "stars"
    t.string   "code_repository_link"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "stars", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "email"
    t.text     "bio"
    t.string   "skills"
    t.string   "applied_projects"
    t.string   "contributing_projects"
    t.string   "stared_projects"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
