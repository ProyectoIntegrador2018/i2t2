class CentersController < ApplicationController
  before_action :set_center, only: [:show, :edit, :update, :destroy]

  # GET /centers
  # GET /centers.json
  def index
    @centers = Center.all
  end

  # GET /centers/1
  # GET /centers/1.json
  def show
  end

  # GET /centers/new
  def new
    @center = Center.new
  end

  # GET /centers/1/edit
  def edit
  end

  # POST /centers
  # POST /centers.json
  def create
    @center = Center.new(center_params)

    respond_to do |format|
      if @center.save
        format.html { redirect_to @center, notice: 'Center was successfully created.' }
        format.json { render :show, status: :created, location: @center }
      else
        format.html { render :new }
        format.json { render json: @center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centers/1
  # PATCH/PUT /centers/1.json
  def update
    respond_to do |format|
      if @center.update(center_params)
        format.html { redirect_to @center, notice: 'Center was successfully updated.' }
        format.json { render :show, status: :ok, location: @center }
      else
        format.html { render :edit }
        format.json { render json: @center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centers/1
  # DELETE /centers/1.json
  def destroy
    @center.destroy
    respond_to do |format|
      format.html { redirect_to centers_url, notice: 'Center was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_center
      @center = Center.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def center_params
      params.require(:center).permit(:full_name,
                                   :short_name,
                                   :website,
                                   :address,
                                   :start_date,
                                   :building_area,
                                   :property_area,
                                   :property_private_funding,
                                   :property_federal_funding,
                                   :property_state_funding,
                                   :property_other_funding,
                                   :property_other_source,
                                   :equipment_private_funding,
                                   :equipment_federal_funding,
                                   :equipment_state_funding,
                                   :equipment_other_funding,
                                   :equipment_other_source,
                                   :requested_patents_mexico,
                                   :requested_designs_mexico,
                                   :requested_patents_us_eu_as,
                                   :given_patents_mexico,
                                   :given_designs_mexico,
                                   :given_patents_us_eu_as,
                                   :trademarks,
                                   :copyrights,
                                   :isi_publications,
                                   :arbitrated_publications,
                                   :non_arbitrated_publications,
                                   :quotes_in_publications,
                                   :director_name,
                                   :director_email,
                                   :director_phone,
                                   :industry_ids => [],
                                   :cluster_ids => []
                                   )
    end
end
