class ArticlesController < ApplicationController
  def create
    @article = Article.new(params[:article])
    @article.posted_on = Time.now()
    respond_to do |format|
      if @article.save
        format.html { redirect_to articles_path, :notice => "Article successfully added. " }
      end
    end
  end

  def destroy
  end

  def index
    @articles = Article.all()
  end

  def new
    @article = Article.new()
  end
end
