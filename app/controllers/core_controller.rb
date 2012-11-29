class CoreController < ApplicationController
  def index
    @products = Product.all()
    gon.products = Product.all()
    @latest_products = @products.reverse[0,5]
  end
  
  def news
    @title = "News"
    @articles = Article.all()
  end
  
  def products
    @title = "Products"
  end
end