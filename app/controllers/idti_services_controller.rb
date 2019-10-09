class IdtiServicesController < ApplicationController
  before_action :set_idti_service, only: [:show, :edit, :update, :destroy]

  # GET /idti_services
  # GET /idti_services.json
  def index
    @idti_services = IdtiService.all
  end

  # GET /idti_services/1
  # GET /idti_services/1.json
  def show
  end

  # GET /idti_services/new
  def new
    @idti_service = IdtiService.new
  end

  # GET /idti_services/1/edit
  def edit
  end

  # POST /idti_services
  # POST /idti_services.json
  def create
    @idti_service = IdtiService.new(idti_service_params)

    respond_to do |format|
      if @idti_service.save
        format.html { redirect_to @idti_service, notice: 'Idti service was successfully created.' }
        format.json { render :show, status: :created, location: @idti_service }
      else
        format.html { render :new }
        format.json { render json: @idti_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idti_services/1
  # PATCH/PUT /idti_services/1.json
  def update
    respond_to do |format|
      if @idti_service.update(idti_service_params)
        format.html { redirect_to @idti_service, notice: 'Idti service was successfully updated.' }
        format.json { render :show, status: :ok, location: @idti_service }
      else
        format.html { render :edit }
        format.json { render json: @idti_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idti_services/1
  # DELETE /idti_services/1.json
  def destroy
    @idti_service.destroy
    respond_to do |format|
      format.html { redirect_to idti_services_url, notice: 'Idti service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idti_service
      @idti_service = IdtiService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idti_service_params
      params.require(:idti_service).permit(:name, :industry, :center_id)
    end
end
