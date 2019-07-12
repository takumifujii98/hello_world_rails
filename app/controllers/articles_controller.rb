class ArticlesController < ApplicationController
  before_action :set_article, only: [:update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    #Article.published = Article.where(status: :published)
    @articles = Article.published
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    if current_user
    current_user.articles.find(params[:id])
    else
    Article.expressed.find(params[:id])
    end
  end

  # POST /articles
  # POST /articles.json
  def create
    current_user.articles.create!(article_params)
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    @article.update!(article_params)
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy!
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_article
    @article = current_user.articles.find(params[:id])
  end
end
