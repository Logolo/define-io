class CoreController < ApplicationController
  def chat
    gon.current_user = current_user
    @title = "Chat"
  end

  def index
    @products = Product.all()
    gon.products = Product.where("average > 0").order("average DESC").limit(50)
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