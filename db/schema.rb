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

ActiveRecord::Schema.define(version: 20180117015651) do

  create_table "empleados", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "rfc"
    t.string "puesto"
    t.integer "usuario_id"
    t.integer "sucursal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sucursals", force: :cascade do |t|
    t.string "nombre"
    t.string "calle"
    t.string "colonia"
    t.integer "numero_exterior"
    t.integer "numero_interior"
    t.integer "codigo_postal"
    t.string "ciudad"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "rfc"
    t.string "empresa"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "apellido"
  end

end
