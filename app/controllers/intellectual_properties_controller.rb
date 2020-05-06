class IntellectualPropertiesController < ApplicationController
  before_action :set_intellectual_property, only: [:show, :edit, :update, :destroy]

  # GET /intellectual_properties
  # GET /intellectual_properties.json
  def index
    @intellectual_properties = IntellectualProperty.all
  end

  # GET /intellectual_properties/1
  # GET /intellectual_properties/1.json
  def show
  end

  # GET /intellectual_properties/new
  def new
    @intellectual_property = IntellectualProperty.new
  end

  # GET /intellectual_properties/1/edit
  def edit
  end

  # POST /intellectual_properties
  # POST /intellectual_properties.json
  def create
    @intellectual_property = IntellectualProperty.new(intellectual_property_params)

    respond_to do |format|
      if @intellectual_property.save
        format.html { redirect_to @intellectual_property, notice: 'Intellectual property was successfully created.' }
        format.json { render :show, status: :created, location: @intellectual_property }
      else
        format.html { render :new }
        format.json { render json: @intellectual_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intellectual_properties/1
  # PATCH/PUT /intellectual_properties/1.json
  def update
    respond_to do |format|
      if @intellectual_property.update(intellectual_property_params)
        format.html { redirect_to @intellectual_property, notice: 'Intellectual property was successfully updated.' }
        format.json { render :show, status: :ok, location: @intellectual_property }
      else
        format.html { render :edit }
        format.json { render json: @intellectual_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intellectual_properties/1
  # DELETE /intellectual_properties/1.json
  def destroy
    @intellectual_property.destroy
    respond_to do |format|
      format.html { redirect_to intellectual_properties_url, notice: 'Intellectual property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intellectual_property
      @intellectual_property = IntellectualProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intellectual_property_params
      params.require(:intellectual_property).permit(:creation, :description, :institution, :registration_year, :publication_year, :keywords)
    end
end
