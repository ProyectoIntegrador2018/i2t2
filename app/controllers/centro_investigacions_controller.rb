# frozen_string_literal: true

# Action handler for CRUD operations on Centros de Investigación.
class CentroInvestigacionsController < ApplicationController
  before_action :set_centro_investigacion, only: %i[show edit update destroy]

  # GET /centro_investigacions
  # GET /centro_investigacions.json
  def index
    @centro_investigacions = CentroInvestigacion.all
  end

  # GET /centro_investigacions/1
  # GET /centro_investigacions/1.json
  def show; end

  # GET /centro_investigacions/new
  def new
    @centro_investigacion = CentroInvestigacion.new
  end

  # GET /centro_investigacions/1/edit
  def edit; end

  def show_created_json
    format.json { render :show, status: :created, location: @centro_investigacion }
  end

  def show_updated_json
    format.json { render :show, status: :ok, location: @centro_investigacion }
  end

  def show_unprocessable_json
    format.json { render json: @centro_investigacion.errors, status: :unprocessable_entity }
  end

  # POST /centro_investigacions
  # POST /centro_investigacions.json
  def create
    @centro_investigacion = CentroInvestigacion.new(centro_investigacion_params)

    respond_to do |format|
      if @centro_investigacion.save
        format.html { redirect_to @centro_investigacion, notice: 'Centro investigacion was successfully created.' }
        show_created_json
      else
        format.html { render :new }
        show_unprocessable_json
      end
    end
  end

  # PATCH/PUT /centro_investigacions/1
  # PATCH/PUT /centro_investigacions/1.json
  def update
    respond_to do |format|
      if @centro_investigacion.update(centro_investigacion_params)
        format.html { redirect_to @centro_investigacion, notice: 'Centro investigacion was successfully updated.' }
        show_updated_json
      else
        format.html { render :edit }
        show_unprocessable_json
      end
    end
  end

  # DELETE /centro_investigacions/1
  # DELETE /centro_investigacions/1.json
  def destroy
    @centro_investigacion.destroy
    respond_to do |format|
      format.html { redirect_to centro_investigacions_url, notice: 'Centro investigacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_centro_investigacion
    @centro_investigacion = CentroInvestigacion.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def centro_investigacion_params
    params.require(:centro_investigacion).permit(:nombre, :abreviacion, :sitio, :domicilio, :fecha_inicio, :nombre_encargado, :correo_encargado, :telefono_encargado, :sectores, :industrias, :areas_investigacion, :servicios_idti, :terreno_total, :terreno_privada, :terreno_federal, :terreno_estatal, :terreno_otro, :equip_total, :equip_privado, :equip_federal, :equip_estatal, :equip_otro, :area_edificio, :area_terreno, :area_total, :area_idi, :lista_equipo, :patentes_solicitadas_mexico, :disenos_solicitados_mexico, :patentes_solicitadas_triadicas, :patentes_otorgadas_mexico, :disenos_otorgados_mexico, :patentes_otorgadas_triadicas, :marcas_registradas, :derechos_registrados, :publicaciones_isi, :articulos_arb, :articulos_no_arb, :citas_articulos, :premios_centro, :responsable_dep_vinculacion, :user_id, :centro_id)
  end
end
