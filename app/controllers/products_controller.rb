class ProductsController < ApplicationController
  def create
  end
  
  def new
    @product = Product.new()
  end
end