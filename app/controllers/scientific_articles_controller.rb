class ScientificArticlesController < ApplicationController
  before_action :set_scientific_article, only: [:show, :edit, :update, :destroy]

  # GET /scientific_articles
  # GET /scientific_articles.json
  def index
    @scientific_articles = ScientificArticle.all
  end

  # GET /scientific_articles/1
  # GET /scientific_articles/1.json
  def show
  end

  # GET /scientific_articles/new
  def new
    @scientific_article = ScientificArticle.new
  end

  # GET /scientific_articles/1/edit
  def edit
  end

  # POST /scientific_articles
  # POST /scientific_articles.json
  def create
    @scientific_article = ScientificArticle.new(scientific_article_params)

    respond_to do |format|
      if @scientific_article.save
        format.html { redirect_to @scientific_article, notice: 'Scientific article was successfully created.' }
        format.json { render :show, status: :created, location: @scientific_article }
      else
        format.html { render :new }
        format.json { render json: @scientific_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scientific_articles/1
  # PATCH/PUT /scientific_articles/1.json
  def update
    respond_to do |format|
      if @scientific_article.update(scientific_article_params)
        format.html { redirect_to @scientific_article, notice: 'Scientific article was successfully updated.' }
        format.json { render :show, status: :ok, location: @scientific_article }
      else
        format.html { render :edit }
        format.json { render json: @scientific_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scientific_articles/1
  # DELETE /scientific_articles/1.json
  def destroy
    @scientific_article.destroy
    respond_to do |format|
      format.html { redirect_to scientific_articles_url, notice: 'Scientific article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scientific_article
      @scientific_article = ScientificArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scientific_article_params
      params.require(:scientific_article).permit(:title, :authors, :publication_date, :magazine, :volume, :number, :first_page, :last_page, :doi, :link)
    end
end
