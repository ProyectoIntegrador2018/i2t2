# frozen_string_literal: true

json.extract! centro_investigacion, :id, :nombre, :abreviacion, :sitio, :domicilio,
									:fecha_inicio, :nombre_encargado, :correo_encargado,
									:telefono_encargado, :sectores, :industrias, :areas_investigacion,
									:servicios_idti, :terreno_total, :terreno_privada, :terreno_federal,
									:terreno_estatal, :terreno_otro, :equip_total, :equip_privado,
									:equip_federal, :equip_estatal, :equip_otro, :area_edificio,
									:area_terreno, :area_total, :area_idi, :lista_equipo,
									:patentes_solicitadas_mexico, :disenos_solicitados_mexico,
									:patentes_solicitadas_triadicas, :patentes_otorgadas_mexico,
									:disenos_otorgados_mexico, :patentes_otorgadas_triadicas,
									:marcas_registradas, :derechos_registrados,
									:publicaciones_isi, :articulos_arb, :articulos_no_arb,
									:citas_articulos, :premios_centro, :responsable_dep_vinculacion,
									:user_id, :centro_id, :created_at, :updated_at
json.url centro_investigacion_url(centro_investigacion, format: :json)
