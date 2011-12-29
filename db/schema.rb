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

ActiveRecord::Schema.define(:version => 20111229065829) do

  create_table "bg_setups", :force => true do |t|
    t.string   "bg_status"
    t.string   "bg_prdocutline"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "needs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "productline"
    t.string   "submitter"
    t.string   "s_phone"
    t.string   "s_address"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "commentator"
    t.text     "comment"
    t.text     "finalreq"
    t.boolean  "reviewornot"
    t.string   "reviewer"
    t.text     "r_opinion"
    t.string   "r_conclusion"
    t.string   "r_result"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
