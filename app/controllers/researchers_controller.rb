class ResearchersController < ApplicationController
  load_and_authorize_resource
  before_action :set_researcher, only: [:show, :edit, :update, :destroy]

  # GET /researchers
  # GET /researchers.json
  def index
    if current_user&.investigador?
      @researchers = current_user.researcher.present? ? [current_user.researcher] : []
    else
      @researchers = Researcher.all
    end
  end

  # GET /researchers/1
  # GET /researchers/1.json
  def show
  end

  # GET /researchers/new
  def new
    #Redirect to editing if there is alreade a researcher for the 
    @researcher = Researcher.find_by(user_id: current_user.id)
    if @researcher
      redirect_to edit_researcher_path(id: @researcher)
    else
      @researcher = Researcher.new
    end
    # @researcher = Researcher.new
  end

  # GET /researchers/1/edit
  def edit
  end

  #Check that the user has the ability to create a new Researcher
  #Or they havent created one previously
  def can_create_researcher
    return (can? :create, Researcher) && (not Researcher.exists?(user_id: current_user.id))
  end
  helper_method :can_create_researcher

  # POST /researchers
  # POST /researchers.json
  def create
    #Dont create a new researcher if the user already has one
    @current_id = current_user.id
    if not Researcher.exists?(user_id: @current_id)
      @researcher.user_id = @current_id
      respond_to do |format|
        if @researcher.save
          format.html { redirect_to @researcher, notice: 'Researcher was successfully created.' }
          format.json { render :show, status: :created, location: @researcher }
        else
          format.html { render :new }
          format.json { render json: @researcher.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /researchers/1
  # PATCH/PUT /researchers/1.json
  def update
    respond_to do |format|
      if @researcher.update(researcher_params)
        format.html { redirect_to @researcher, notice: 'Researcher was successfully updated.' }
        format.json { render :show, status: :ok, location: @researcher }
      else
        format.html { render :edit }
        format.json { render json: @researcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /researchers/1
  # DELETE /researchers/1.json
  def destroy
    @researcher.destroy
    respond_to do |format|
      format.html { redirect_to researchers_url, notice: 'Researcher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_researcher
      # @researcher = Researcher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def researcher_params
      params.require(:researcher).permit(scientific_articles_attributes: %i[
        id title authors publication_date magazine volume number first_page last_page doi link _destroy
      ], intellectual_properties_attributes: %i[
        id creation description institution registration_year publication_year keywords
      ]).merge(user: current_user)
    end
end
