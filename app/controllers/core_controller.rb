class CoreController < ApplicationController
  def index
    @products = Product.all()
  end
  
  def news
    @title = "News"
    @articles = Article.all()
  end
  
  def products
    @title = "Products"
  end
end