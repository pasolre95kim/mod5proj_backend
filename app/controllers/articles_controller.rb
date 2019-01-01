class ArticlesController < ApplicationController

  def index
    render json: Article.all
  end

  def show
    render json: Article.find(params[:id])
  end

  def create
    render json: Article.create(articles_params)
  end


private

  def articles_params
    params.require(:article).permit(:title, :abstract, :body, :image)
  end

end
