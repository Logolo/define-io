class ProductsController < ApplicationController
  def create
    @product = Product.new(params[:product])
    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, :notice => "Product successfully added." }
      end
    end
  end

  def index
    @products = Product.all()
    @title = "Products"
  end
  
  def new
    @product = Product.new()
    @title = "Add New Product"
  end
end