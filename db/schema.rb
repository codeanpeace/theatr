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

ActiveRecord::Schema.define(:version => 20130707091713) do

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "duration"
    t.string   "rating"
    t.integer  "year"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "showings", :force => true do |t|
    t.date     "showing_date"
    t.time     "showing_time"
    t.integer  "location_id"
    t.integer  "movie_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "showings", ["location_id"], :name => "index_showings_on_location_id"
  add_index "showings", ["movie_id"], :name => "index_showings_on_movie_id"

  create_table "tickets", :force => true do |t|
    t.string   "row"
    t.string   "seat"
    t.string   "type"
    t.integer  "price"
    t.integer  "showing_id"
    t.integer  "movie_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tickets", ["showing_id"], :name => "index_tickets_on_showing_id"

end
