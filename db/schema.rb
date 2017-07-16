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

ActiveRecord::Schema.define(version: 20170716100141) do

  create_table "apps", force: :cascade do |t|
    t.string "name"
    t.integer "appserver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appserver_id"], name: "index_apps_on_appserver_id"
  end

  create_table "appservers", force: :cascade do |t|
    t.string "name"
    t.integer "server_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["server_id"], name: "index_appservers_on_server_id"
  end

  create_table "environments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servers", force: :cascade do |t|
    t.string "name"
    t.integer "environment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["environment_id"], name: "index_servers_on_environment_id"
  end

end
