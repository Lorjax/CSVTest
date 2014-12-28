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

ActiveRecord::Schema.define(version: 20141002171717) do

  create_table "computers", force: true do |t|
    t.string   "name"
    t.string   "hersteller"
    t.string   "mainboard"
    t.string   "cpu"
    t.string   "ram"
    t.string   "bios"
    t.string   "lan"
    t.string   "macadresse"
    t.string   "grafikkarte"
    t.string   "os"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "computers", ["room_id"], name: "index_computers_on_room_id"

  create_table "rooms", force: true do |t|
    t.string   "nummer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
