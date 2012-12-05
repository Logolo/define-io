class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build(params[:review])
    @review.user_id = current_user
    @review.written_by = current_user.name

    respond_to do |format|
      if @review.save
        @product.add_new_score(@review.rating)
        @product.save
        current_user.products_reviewed.push(@review.product_id)
        current_user.save()
        format.html { redirect_to @product }
      end
    end
  end

  def edit
    @product = Product.find(params[:id])
    @review = current_user.reviews.where(:product_id => @product.id).first
  end

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build()
  end

  def show
    @review = Review.find(params[:id])
  end

  def update
    @review = current_user.reviews.find(params[:id])
    if @review.update_attributes!(params[:review])
      redirect_to :index_path
    end
  end
end
