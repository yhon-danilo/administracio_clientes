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

ActiveRecord::Schema.define(version: 20140409145351) do

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "edad"
    t.string   "apellidos"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "edad"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "propiedades", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.decimal  "valor",      precision: 10, scale: 0
    t.integer  "estrato"
    t.integer  "persona_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "propiedades", ["persona_id"], name: "index_propiedades_on_persona_id", using: :btree

end
