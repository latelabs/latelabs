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

ActiveRecord::Schema.define(:version => 20131102004057) do

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
    t.integer  "user_receiver"
    t.integer  "project_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "projects", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "explanation"
    t.string   "skill"
    t.string   "code_repository_link"
    t.string   "contributors_link"
    t.string   "gh_repos"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "signups", :force => true do |t|
    t.string   "signups"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "skill"
    t.integer  "skillable_id"
    t.string   "skillable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "skillsets", :force => true do |t|
    t.integer  "skill_id"
    t.integer  "skillable_id"
    t.string   "skillable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "stars", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.string   "owner"
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "location"
    t.text     "bio"
    t.integer  "gh_followers"
    t.integer  "gh_following"
    t.integer  "gh_collaborators"
    t.integer  "gh_private_repos"
    t.string   "gh_public_repos"
    t.string   "gravartar_id"
    t.string   "gh_url"
    t.string   "gh_events"
    t.string   "gh_orgs"
    t.string   "gh_repos"
    t.boolean  "hireable"
    t.string   "token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["user_name"], :name => "index_users_on_user_name", :unique => true

end
