class ArticlesController < ApplicationController
  before_filter :authorized, :only => [:create, :destroy, :new, :update]
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

  protected
  def authorized
    if user_signed_in? && current_user.admin?
      true
    else
      redirect_to :index_path
    end
  end
end
