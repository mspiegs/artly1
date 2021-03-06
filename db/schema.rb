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

ActiveRecord::Schema.define(:version => 20131028194052) do

  create_table "art_pieces", :force => true do |t|
    t.string   "name"
    t.date     "delivery_date"
    t.date     "date"
    t.integer  "number_of_pieces"
    t.date     "removal_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "location_id"
    t.integer  "art_type_id"
  end

  create_table "art_types", :force => true do |t|
    t.string   "type_of_art"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "editions", :force => true do |t|
    t.string   "number"
    t.string   "name"
    t.integer  "production_id"
    t.string   "purchaser"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "art_piece_id"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "contact_person"
    t.string   "phone"
    t.text     "notes"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "productions", :force => true do |t|
    t.integer  "location_id"
    t.integer  "art_piece_id"
    t.integer  "number"
    t.integer  "number_of_editions"
    t.string   "name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
