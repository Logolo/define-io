class ArticlesController < ApplicationController
  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to :news_path, :notice => "Article added."
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  def index
    @articles = Article.all()
  end

  def new
    @article = Article.new()
  end

  def show
    @article = Article.find(params[:id])
    @title = @article.title
  end
end
