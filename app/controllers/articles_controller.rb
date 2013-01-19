class ArticlesController < ApplicationController
  before_filter :authorized, :only => [:create, :destroy, :new, :update]
  def create
    @article = Article.new(params[:article])
    @article.user = current_user
    if @article.save
      redirect_to :news_path, :notice => "Article added."
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  def edit
    @article = Article.find(params[:id])
    @title = "Edit Article"
    unless user_signed_in? && current_user.articles.include?(@article)
      redirect_to :index_path
    end
  end

  def index
    @articles = Article.all()
    @title = "All Articles"
  end

  def new
    @article = Article.new()
    @title = "New Article"
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
