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

ActiveRecord::Schema.define(:version => 20111221061651) do

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

end
