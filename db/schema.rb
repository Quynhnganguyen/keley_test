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

ActiveRecord::Schema.define(version: 20160115140957) do

  create_table "produits", force: :cascade do |t|
    t.string   "description"
    t.float    "prix"
    t.float    "poids"
    t.integer  "tag"
    t.string   "image_path"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "produits_tags", id: false, force: :cascade do |t|
    t.integer "produit_id", null: false
    t.integer "tag_id",     null: false
  end

  add_index "produits_tags", ["produit_id", "tag_id"], name: "index_produits_tags_on_produit_id_and_tag_id"
  add_index "produits_tags", ["tag_id", "produit_id"], name: "index_produits_tags_on_tag_id_and_produit_id"

  create_table "tags", force: :cascade do |t|
    t.integer  "niveau"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
