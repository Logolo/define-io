class CoreController < ApplicationController
  def chat
    gon.current_user = current_user
    @title = "Chat"
  end

  def index
    @products = Product.all()
    gon.products = Product.order("average DESC")
    @latest_articles = Article.all()
    @latest_products = @products.reverse[0,10]
  end
  
  def news
    @articles = Article.all()
    @title = "News"
  end
  
  def products
    @title = "Products"
  end
end