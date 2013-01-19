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
    gon.products = Product.where("average > 0").order("average DESC").limit(50)
    @products = Product.order("average DESC")
    @title = "Products"
    respond_to do |format|
      format.html
      format.json { render :json => @products }
    end
  end
  
  def new
    @product = Product.new()
    @title = "Add New Product"
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
    gon.reviews = @product.reviews.order("rating DESC")
    @title = @product.name
    if user_signed_in? && current_user.products_reviewed.include?(@product)
      @review = current_user.reviews.find(:conditions => ["product_id = ?", @product.id])
    else
      @review = Review.new()
    end
    respond_to do |format|
      format.html
      format.json { render :json => @product }
    end
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