# frozen_string_literal: true

require 'application_system_test_case'

class CentroInvestigacionsTest < ApplicationSystemTestCase
  setup do
    @centro_investigacion = centro_investigacions(:one)
  end

  test 'visiting the index' do
    visit centro_investigacions_url
    assert_selector 'h1', text: 'Centro Investigacions'
  end

  test 'creating a Centro investigacion' do
    visit centro_investigacions_url
    click_on 'New Centro Investigacion'

    fill_in 'Abreviacion', with: @centro_investigacion.abreviacion
    fill_in 'Area edificio', with: @centro_investigacion.area_edificio
    fill_in 'Area idi', with: @centro_investigacion.area_idi
    fill_in 'Area terreno', with: @centro_investigacion.area_terreno
    fill_in 'Area total', with: @centro_investigacion.area_total
    fill_in 'Areas investigacion', with: @centro_investigacion.areas_investigacion
    fill_in 'Articulos arb', with: @centro_investigacion.articulos_arb
    fill_in 'Articulos no arb', with: @centro_investigacion.articulos_no_arb
    fill_in 'Centro', with: @centro_investigacion.centro_id
    fill_in 'Citas articulos', with: @centro_investigacion.citas_articulos
    fill_in 'Correo encargado', with: @centro_investigacion.correo_encargado
    fill_in 'Derechos registrados', with: @centro_investigacion.derechos_registrados
    fill_in 'Disenos otorgados mexico', with: @centro_investigacion.disenos_otorgados_mexico
    fill_in 'Disenos solicitados mexico', with: @centro_investigacion.disenos_solicitados_mexico
    fill_in 'Domicilio', with: @centro_investigacion.domicilio
    fill_in 'Equip estatal', with: @centro_investigacion.equip_estatal
    fill_in 'Equip federal', with: @centro_investigacion.equip_federal
    fill_in 'Equip otro', with: @centro_investigacion.equip_otro
    fill_in 'Equip privado', with: @centro_investigacion.equip_privado
    fill_in 'Equip total', with: @centro_investigacion.equip_total
    fill_in 'Fecha inicio', with: @centro_investigacion.fecha_inicio
    fill_in 'Industrias', with: @centro_investigacion.industrias
    fill_in 'Lista equipo', with: @centro_investigacion.lista_equipo
    fill_in 'Marcas registradas', with: @centro_investigacion.marcas_registradas
    fill_in 'Nombre', with: @centro_investigacion.nombre
    fill_in 'Nombre encargado', with: @centro_investigacion.nombre_encargado
    fill_in 'Patentes otorgadas mexico', with: @centro_investigacion.patentes_otorgadas_mexico
    fill_in 'Patentes otorgadas triadicas', with: @centro_investigacion.patentes_otorgadas_triadicas
    fill_in 'Patentes solicitadas mexico', with: @centro_investigacion.patentes_solicitadas_mexico
    fill_in 'Patentes solicitadas triadicas', with: @centro_investigacion.patentes_solicitadas_triadicas
    fill_in 'Premios centro', with: @centro_investigacion.premios_centro
    fill_in 'Publicaciones isi', with: @centro_investigacion.publicaciones_isi
    fill_in 'Responsable dep vinculacion', with: @centro_investigacion.responsable_dep_vinculacion
    fill_in 'Sectores', with: @centro_investigacion.sectores
    fill_in 'Servicios idti', with: @centro_investigacion.servicios_idti
    fill_in 'Sitio', with: @centro_investigacion.sitio
    fill_in 'Telefono encargado', with: @centro_investigacion.telefono_encargado
    fill_in 'Terreno estatal', with: @centro_investigacion.terreno_estatal
    fill_in 'Terreno federal', with: @centro_investigacion.terreno_federal
    fill_in 'Terreno otro', with: @centro_investigacion.terreno_otro
    fill_in 'Terreno privada', with: @centro_investigacion.terreno_privada
    fill_in 'Terreno total', with: @centro_investigacion.terreno_total
    fill_in 'User', with: @centro_investigacion.user_id
    click_on 'Create Centro investigacion'

    assert_text 'Centro investigacion was successfully created'
    click_on 'Back'
  end

  test 'updating a Centro investigacion' do
    visit centro_investigacions_url
    click_on 'Edit', match: :first

    fill_in 'Abreviacion', with: @centro_investigacion.abreviacion
    fill_in 'Area edificio', with: @centro_investigacion.area_edificio
    fill_in 'Area idi', with: @centro_investigacion.area_idi
    fill_in 'Area terreno', with: @centro_investigacion.area_terreno
    fill_in 'Area total', with: @centro_investigacion.area_total
    fill_in 'Areas investigacion', with: @centro_investigacion.areas_investigacion
    fill_in 'Articulos arb', with: @centro_investigacion.articulos_arb
    fill_in 'Articulos no arb', with: @centro_investigacion.articulos_no_arb
    fill_in 'Centro', with: @centro_investigacion.centro_id
    fill_in 'Citas articulos', with: @centro_investigacion.citas_articulos
    fill_in 'Correo encargado', with: @centro_investigacion.correo_encargado
    fill_in 'Derechos registrados', with: @centro_investigacion.derechos_registrados
    fill_in 'Disenos otorgados mexico', with: @centro_investigacion.disenos_otorgados_mexico
    fill_in 'Disenos solicitados mexico', with: @centro_investigacion.disenos_solicitados_mexico
    fill_in 'Domicilio', with: @centro_investigacion.domicilio
    fill_in 'Equip estatal', with: @centro_investigacion.equip_estatal
    fill_in 'Equip federal', with: @centro_investigacion.equip_federal
    fill_in 'Equip otro', with: @centro_investigacion.equip_otro
    fill_in 'Equip privado', with: @centro_investigacion.equip_privado
    fill_in 'Equip total', with: @centro_investigacion.equip_total
    fill_in 'Fecha inicio', with: @centro_investigacion.fecha_inicio
    fill_in 'Industrias', with: @centro_investigacion.industrias
    fill_in 'Lista equipo', with: @centro_investigacion.lista_equipo
    fill_in 'Marcas registradas', with: @centro_investigacion.marcas_registradas
    fill_in 'Nombre', with: @centro_investigacion.nombre
    fill_in 'Nombre encargado', with: @centro_investigacion.nombre_encargado
    fill_in 'Patentes otorgadas mexico', with: @centro_investigacion.patentes_otorgadas_mexico
    fill_in 'Patentes otorgadas triadicas', with: @centro_investigacion.patentes_otorgadas_triadicas
    fill_in 'Patentes solicitadas mexico', with: @centro_investigacion.patentes_solicitadas_mexico
    fill_in 'Patentes solicitadas triadicas', with: @centro_investigacion.patentes_solicitadas_triadicas
    fill_in 'Premios centro', with: @centro_investigacion.premios_centro
    fill_in 'Publicaciones isi', with: @centro_investigacion.publicaciones_isi
    fill_in 'Responsable dep vinculacion', with: @centro_investigacion.responsable_dep_vinculacion
    fill_in 'Sectores', with: @centro_investigacion.sectores
    fill_in 'Servicios idti', with: @centro_investigacion.servicios_idti
    fill_in 'Sitio', with: @centro_investigacion.sitio
    fill_in 'Telefono encargado', with: @centro_investigacion.telefono_encargado
    fill_in 'Terreno estatal', with: @centro_investigacion.terreno_estatal
    fill_in 'Terreno federal', with: @centro_investigacion.terreno_federal
    fill_in 'Terreno otro', with: @centro_investigacion.terreno_otro
    fill_in 'Terreno privada', with: @centro_investigacion.terreno_privada
    fill_in 'Terreno total', with: @centro_investigacion.terreno_total
    fill_in 'User', with: @centro_investigacion.user_id
    click_on 'Update Centro investigacion'

    assert_text 'Centro investigacion was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Centro investigacion' do
    visit centro_investigacions_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Centro investigacion was successfully destroyed'
  end
end
