class CoreController < ApplicationController
  def index
    @products = Product.all()
    gon.products = Product.order("average DESC")
    @latest_articles = Article.all()
    @latest_products = @products.reverse[0,10]
  end
  
  def news
    @title = "News"
    @articles = Article.all()
  end
  
  def products
    @title = "Products"
  end
end