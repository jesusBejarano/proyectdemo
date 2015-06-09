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

ActiveRecord::Schema.define(version: 20150608194405) do

  create_table "departamentos", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detalle_menus", force: true do |t|
    t.integer  "DetallePedido_id"
    t.integer  "plato_id"
    t.integer  "TipoMenu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detalle_menus", ["DetallePedido_id"], name: "index_detalle_menus_on_DetallePedido_id", using: :btree
  add_index "detalle_menus", ["TipoMenu_id"], name: "index_detalle_menus_on_TipoMenu_id", using: :btree
  add_index "detalle_menus", ["plato_id"], name: "index_detalle_menus_on_plato_id", using: :btree

  create_table "detalle_pedidos", force: true do |t|
    t.integer  "pedido_id"
    t.string   "NombreProducto"
    t.integer  "cantidad"
    t.decimal  "PrecioParcial",  precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detalle_pedidos", ["pedido_id"], name: "index_detalle_pedidos_on_pedido_id", using: :btree

  create_table "direcciones", force: true do |t|
    t.integer  "user_id"
    t.string   "nombre"
    t.integer  "ubigeo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "direcciones", ["ubigeo_id"], name: "index_direcciones_on_ubigeo_id", using: :btree
  add_index "direcciones", ["user_id"], name: "index_direcciones_on_user_id", using: :btree

  create_table "distritos", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingrediente_platos", force: true do |t|
    t.integer  "plato_id"
    t.integer  "ingrediente_id"
    t.decimal  "cantidad",       precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingrediente_platos", ["ingrediente_id"], name: "index_ingrediente_platos_on_ingrediente_id", using: :btree
  add_index "ingrediente_platos", ["plato_id"], name: "index_ingrediente_platos_on_plato_id", using: :btree

  create_table "ingredientes", force: true do |t|
    t.string   "nombre"
    t.integer  "UnidadMedida_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredientes", ["UnidadMedida_id"], name: "index_ingredientes_on_UnidadMedida_id", using: :btree

  create_table "locals", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.integer  "ubigeo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locals", ["ubigeo_id"], name: "index_locals_on_ubigeo_id", using: :btree

  create_table "pedidos", force: true do |t|
    t.integer  "local_id"
    t.integer  "periodo_id"
    t.date     "dia"
    t.integer  "user_id"
    t.decimal  "CantidadPagar",  precision: 10, scale: 0
    t.integer  "direcciones_id"
    t.integer  "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pedidos", ["direcciones_id"], name: "index_pedidos_on_direcciones_id", using: :btree
  add_index "pedidos", ["estado_id"], name: "index_pedidos_on_estado_id", using: :btree
  add_index "pedidos", ["local_id"], name: "index_pedidos_on_local_id", using: :btree
  add_index "pedidos", ["periodo_id"], name: "index_pedidos_on_periodo_id", using: :btree
  add_index "pedidos", ["user_id"], name: "index_pedidos_on_user_id", using: :btree

  create_table "periodos", force: true do |t|
    t.string   "nombre"
    t.date     "FechaInicial"
    t.date     "FechaFinal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "platos", force: true do |t|
    t.string   "nombre"
    t.decimal  "precio",              precision: 10, scale: 0
    t.integer  "TipoPlato_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "platos", ["TipoPlato_id"], name: "index_platos_on_TipoPlato_id", using: :btree

  create_table "programacion_semanals", force: true do |t|
    t.integer  "local_id"
    t.integer  "periodo_id"
    t.date     "dia"
    t.integer  "plato_id"
    t.decimal  "stock",       precision: 10, scale: 0
    t.integer  "TipoMenu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programacion_semanals", ["TipoMenu_id"], name: "index_programacion_semanals_on_TipoMenu_id", using: :btree
  add_index "programacion_semanals", ["local_id"], name: "index_programacion_semanals_on_local_id", using: :btree
  add_index "programacion_semanals", ["periodo_id"], name: "index_programacion_semanals_on_periodo_id", using: :btree
  add_index "programacion_semanals", ["plato_id"], name: "index_programacion_semanals_on_plato_id", using: :btree

  create_table "provincia", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_documentos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_menus", force: true do |t|
    t.string   "nombre"
    t.boolean  "PrecioFijo"
    t.decimal  "precio",     precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_platos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ubigeos", force: true do |t|
    t.integer  "departamento_id"
    t.integer  "provincia_id"
    t.integer  "distrito_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ubigeos", ["departamento_id"], name: "index_ubigeos_on_departamento_id", using: :btree
  add_index "ubigeos", ["distrito_id"], name: "index_ubigeos_on_distrito_id", using: :btree
  add_index "ubigeos", ["provincia_id"], name: "index_ubigeos_on_provincia_id", using: :btree

  create_table "unidad_medidas", force: true do |t|
    t.string   "nombre"
    t.string   "abreviatura"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "ApellidoPaterno"
    t.string   "ApellidoMaterno"
    t.string   "NumeroDocumento"
    t.integer  "TipoDocumento_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
