class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build(params[:review])
    @review.user_id = current_user
    @review.written_by = current_user.name

    respond_to do |format|
      if @review.save
        @product.total_reviews += 1
        @product.save()
        current_user.products_reviewed.push(@review.product_id)
        current_user.save()
        format.html { redirect_to @product }
      end
    end
  end

  def edit
    @product = Product.find(params[:id])
    @review = Review.find(params[:id])
    #if @review.update_attributes(params[:review])
    #  redirect_to :index_path
    #end
  end

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build()
  end

  def show
    @review = Review.find(params[:product_id])
  end
end
