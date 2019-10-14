# frozen_string_literal: true

class IdtiAreasController < ApplicationController
  before_action :set_idti_area, only: %i[show edit update destroy]

  # GET /idti_areas
  # GET /idti_areas.json
  def index
    @idti_areas = IdtiArea.all
  end

  # GET /idti_areas/1
  # GET /idti_areas/1.json
  def show; end

  # GET /idti_areas/new
  def new
    @idti_area = IdtiArea.new
  end

  # GET /idti_areas/1/edit
  def edit; end

  # POST /idti_areas
  # POST /idti_areas.json
  def create
    @idti_area = IdtiArea.new(idti_area_params)

    respond_to do |format|
      if @idti_area.save
        format.html { redirect_to @idti_area, notice: 'Idti area was successfully created.' }
        format.json { render :show, status: :created, location: @idti_area }
      else
        format.html { render :new }
        format.json { render json: @idti_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idti_areas/1
  # PATCH/PUT /idti_areas/1.json
  def update
    respond_to do |format|
      if @idti_area.update(idti_area_params)
        format.html { redirect_to @idti_area, notice: 'Idti area was successfully updated.' }
        format.json { render :show, status: :ok, location: @idti_area }
      else
        format.html { render :edit }
        format.json { render json: @idti_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idti_areas/1
  # DELETE /idti_areas/1.json
  def destroy
    @idti_area.destroy
    respond_to do |format|
      format.html { redirect_to idti_areas_url, notice: 'Idti area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_idti_area
    @idti_area = IdtiArea.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def idti_area_params
    params.require(:idti_area).permit(:name, :center_id)
  end
end
