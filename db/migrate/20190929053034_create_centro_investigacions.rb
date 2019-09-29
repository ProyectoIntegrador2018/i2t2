class CreateCentroInvestigacions < ActiveRecord::Migration[5.2]
  def change
    create_table :centro_investigacions do |t|
      t.string :nombre
      t.string :abreviacion
      t.string :sitio
      t.string :domicilio
      t.date :fecha_inicio
      t.string :nombre_encargado
      t.string :correo_encargado
      t.string :telefono_encargado
      t.string :sectores
      t.string :industrias
      t.string :areas_investigacion
      t.string :servicios_idti
      t.decimal :terreno_total
      t.decimal :terreno_privada
      t.decimal :terreno_federal
      t.decimal :terreno_estatal
      t.decimal :terreno_otro
      t.decimal :equip_total
      t.decimal :equip_privado
      t.decimal :equip_federal
      t.decimal :equip_estatal
      t.decimal :equip_otro
      t.decimal :area_edificio
      t.decimal :area_terreno
      t.decimal :area_total
      t.decimal :area_idi
      t.text :lista_equipo
      t.text :patentes_solicitadas_mexico
      t.text :disenos_solicitados_mexico
      t.text :patentes_solicitadas_triadicas
      t.text :patentes_otorgadas_mexico
      t.text :disenos_otorgados_mexico
      t.text :patentes_otorgadas_triadicas
      t.text :marcas_registradas
      t.text :derechos_registrados
      t.text :publicaciones_isi
      t.text :articulos_arb
      t.text :articulos_no_arb
      t.text :citas_articulos
      t.text :premios_centro
      t.string :responsable_dep_vinculacion
      t.references :user, foreign_key: true
      t.integer :centro_id

      t.timestamps
    end
    add_index :centro_investigacions, :centro_id, unique: true
  end
end
