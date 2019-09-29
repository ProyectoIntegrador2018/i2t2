# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_190_929_053_034) do
  create_table 'centro_investigacions', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.string 'nombre'
    t.string 'abreviacion'
    t.string 'sitio'
    t.string 'domicilio'
    t.date 'fecha_inicio'
    t.string 'nombre_encargado'
    t.string 'correo_encargado'
    t.string 'telefono_encargado'
    t.string 'sectores'
    t.string 'industrias'
    t.string 'areas_investigacion'
    t.string 'servicios_idti'
    t.decimal 'terreno_total', precision: 10
    t.decimal 'terreno_privada', precision: 10
    t.decimal 'terreno_federal', precision: 10
    t.decimal 'terreno_estatal', precision: 10
    t.decimal 'terreno_otro', precision: 10
    t.decimal 'equip_total', precision: 10
    t.decimal 'equip_privado', precision: 10
    t.decimal 'equip_federal', precision: 10
    t.decimal 'equip_estatal', precision: 10
    t.decimal 'equip_otro', precision: 10
    t.decimal 'area_edificio', precision: 10
    t.decimal 'area_terreno', precision: 10
    t.decimal 'area_total', precision: 10
    t.decimal 'area_idi', precision: 10
    t.text 'lista_equipo'
    t.text 'patentes_solicitadas_mexico'
    t.text 'disenos_solicitados_mexico'
    t.text 'patentes_solicitadas_triadicas'
    t.text 'patentes_otorgadas_mexico'
    t.text 'disenos_otorgados_mexico'
    t.text 'patentes_otorgadas_triadicas'
    t.text 'marcas_registradas'
    t.text 'derechos_registrados'
    t.text 'publicaciones_isi'
    t.text 'articulos_arb'
    t.text 'articulos_no_arb'
    t.text 'citas_articulos'
    t.text 'premios_centro'
    t.string 'responsable_dep_vinculacion'
    t.bigint 'user_id'
    t.integer 'centro_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['centro_id'], name: 'index_centro_investigacions_on_centro_id', unique: true
    t.index ['user_id'], name: 'index_centro_investigacions_on_user_id'
  end

  create_table 'users', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'role'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'centro_investigacions', 'users'
end
