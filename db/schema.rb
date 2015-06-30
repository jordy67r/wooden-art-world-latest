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

ActiveRecord::Schema.define(version: 20150626092915) do

  create_table "enquiries", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "galleries"
    t.integer  "service_id"
    t.string   "image"
  end

  create_table "service_attachments", force: true do |t|
    t.integer  "service_id"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "service_attachments"
    t.string   "service_attachment"
    t.string   "service"
  end

  create_table "services", force: true do |t|
    t.string   "title"
    t.text     "quote"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_id"
    t.string   "banner_image"
    t.boolean  "primary"
    t.text     "central_image"
    t.text     "left_image"
    t.text     "right_image"
    t.string   "service_type"
  end

  create_table "static_pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
