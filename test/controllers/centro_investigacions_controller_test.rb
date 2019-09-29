# frozen_string_literal: true

require 'test_helper'

# Unit tests for CentroInvestigacionsController.
class CentroInvestigacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @centro_investigacion = centro_investigacions(:one)
    @centro_investigacion_two = centro_investigacions(:two)
    @saved_parms = params: {
            centro_investigacion: {
              abreviacion: @centro_investigacion.abreviacion,
              area_edificio: @centro_investigacion.area_edificio,
              area_idi: @centro_investigacion.area_idi,
              area_terreno: @centro_investigacion.area_terreno,
              area_total: @centro_investigacion.area_total,
              areas_investigacion: @centro_investigacion.areas_investigacion,
              articulos_arb: @centro_investigacion.articulos_arb,
              articulos_no_arb: @centro_investigacion.articulos_no_arb,
              centro_id: @centro_investigacion.centro_id,
              citas_articulos: @centro_investigacion.citas_articulos,
              correo_encargado: @centro_investigacion.correo_encargado,
              derechos_registrados: @centro_investigacion.derechos_registrados,
              disenos_otorgados_mexico: @centro_investigacion.disenos_otorgados_mexico,
              disenos_solicitados_mexico: @centro_investigacion.disenos_solicitados_mexico,
              domicilio: @centro_investigacion.domicilio,
              equip_estatal: @centro_investigacion.equip_estatal,
              equip_federal: @centro_investigacion.equip_federal,
              equip_otro: @centro_investigacion.equip_otro,
              equip_privado: @centro_investigacion.equip_privado,
              equip_total: @centro_investigacion.equip_total,
              fecha_inicio: @centro_investigacion.fecha_inicio,
              industrias: @centro_investigacion.industrias,
              lista_equipo: @centro_investigacion.lista_equipo,
              marcas_registradas: @centro_investigacion.marcas_registradas,
              nombre: @centro_investigacion.nombre,
              nombre_encargado: @centro_investigacion.nombre_encargado,
              patentes_otorgadas_mexico: @centro_investigacion.patentes_otorgadas_mexico,
              patentes_otorgadas_triadicas: @centro_investigacion.patentes_otorgadas_triadicas,
              patentes_solicitadas_mexico: @centro_investigacion.patentes_solicitadas_mexico,
              patentes_solicitadas_triadicas: @centro_investigacion.patentes_solicitadas_triadicas,
              premios_centro: @centro_investigacion.premios_centro,
              ublicaciones_isi: @centro_investigacion.publicaciones_isi,
              responsable_dep_vinculacion: @centro_investigacion.responsable_dep_vinculacion,
              sectores: @centro_investigacion.sectores,
              servicios_idti: @centro_investigacion.servicios_idti,
              sitio: @centro_investigacion.sitio,
              telefono_encargado: @centro_investigacion.telefono_encargado,
              terreno_estatal: @centro_investigacion.terreno_estatal,
              terreno_federal: @centro_investigacion.terreno_federal,
              terreno_otro: @centro_investigacion.terreno_otro,
              terreno_privada: @centro_investigacion.terreno_privada,
              terreno_total: @centro_investigacion.terreno_total,
              user_id: @centro_investigacion.user_id
            }
          }
  end

  test 'should get index' do
    get centro_investigacions_url
    assert_response :success
  end

  test 'should get new' do
    get new_centro_investigacion_url
    assert_response :success
  end

  test 'should create centro_investigacion' do
    assert_difference('CentroInvestigacion.count') do
      post centro_investigacions_url, @saved_parms
    end

    assert_redirected_to centro_investigacion_url(CentroInvestigacion.last)
  end

  test 'should show centro_investigacion' do
    get centro_investigacion_url(@centro_investigacion)
    assert_response :success
  end

  test 'should get edit' do
    get edit_centro_investigacion_url(@centro_investigacion)
    assert_response :success
  end

  test 'should update centro_investigacion' do
    patch centro_investigacion_url(@centro_investigacion_two), params: { centro_investigacion: { abreviacion: @centro_investigacion_two.abreviacion, area_edificio: @centro_investigacion_two.area_edificio, area_idi: @centro_investigacion_two.area_idi, area_terreno: @centro_investigacion_two.area_terreno, area_total: @centro_investigacion_two.area_total, areas_investigacion: @centro_investigacion_two.areas_investigacion, articulos_arb: @centro_investigacion_two.articulos_arb, articulos_no_arb: @centro_investigacion_two.articulos_no_arb, centro_id: @centro_investigacion_two.centro_id, citas_articulos: @centro_investigacion_two.citas_articulos, correo_encargado: @centro_investigacion_two.correo_encargado, derechos_registrados: @centro_investigacion_two.derechos_registrados, disenos_otorgados_mexico: @centro_investigacion_two.disenos_otorgados_mexico, disenos_solicitados_mexico: @centro_investigacion_two.disenos_solicitados_mexico, domicilio: @centro_investigacion_two.domicilio, equip_estatal: @centro_investigacion_two.equip_estatal, equip_federal: @centro_investigacion_two.equip_federal, equip_otro: @centro_investigacion_two.equip_otro, equip_privado: @centro_investigacion_two.equip_privado, equip_total: @centro_investigacion_two.equip_total, fecha_inicio: @centro_investigacion_two.fecha_inicio, industrias: @centro_investigacion_two.industrias, lista_equipo: @centro_investigacion_two.lista_equipo, marcas_registradas: @centro_investigacion_two.marcas_registradas, nombre: @centro_investigacion_two.nombre, nombre_encargado: @centro_investigacion_two.nombre_encargado, patentes_otorgadas_mexico: @centro_investigacion_two.patentes_otorgadas_mexico, patentes_otorgadas_triadicas: @centro_investigacion_two.patentes_otorgadas_triadicas, patentes_solicitadas_mexico: @centro_investigacion_two.patentes_solicitadas_mexico, patentes_solicitadas_triadicas: @centro_investigacion_two.patentes_solicitadas_triadicas, premios_centro: @centro_investigacion_two.premios_centro, publicaciones_isi: @centro_investigacion_two.publicaciones_isi, responsable_dep_vinculacion: @centro_investigacion_two.responsable_dep_vinculacion, sectores: @centro_investigacion_two.sectores, servicios_idti: @centro_investigacion_two.servicios_idti, sitio: @centro_investigacion_two.sitio, telefono_encargado: @centro_investigacion_two.telefono_encargado, terreno_estatal: @centro_investigacion_two.terreno_estatal, terreno_federal: @centro_investigacion_two.terreno_federal, terreno_otro: @centro_investigacion_two.terreno_otro, terreno_privada: @centro_investigacion_two.terreno_privada, terreno_total: @centro_investigacion_two.terreno_total, user_id: @centro_investigacion_two.user_id } }
    assert_redirected_to centro_investigacion_url(@centro_investigacion)
  end

  test 'should destroy centro_investigacion' do
    assert_difference('CentroInvestigacion.count', -1) do
      delete centro_investigacion_url(@centro_investigacion)
    end

    assert_redirected_to centro_investigacions_url
  end
end
