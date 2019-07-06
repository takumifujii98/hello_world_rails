class ArticlesController < ApplicationController
  before_action :current_user, only: [:create, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.json
  def create
    @current_user.create!(article_params)
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    @current_user.update!(article_params)
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @current_user.destroy!
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:title, :body)
  end

  def current_user
    first_user = User.first
    @current_user = first_user.articles.find(params[:id])
  end
end
