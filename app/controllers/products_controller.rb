class ProductsController < ApplicationController
  before_filter :authorized, :only => [:create, :destroy, :new, :update]
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

  def show
    @product = Product.find(params[:id])
    @title = @product.name
    #@reviews = Review.all()
    @reviews = Review.where(:product_id => @product.id)
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