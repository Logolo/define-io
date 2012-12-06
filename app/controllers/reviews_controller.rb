class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build(params[:review])
    @review.user_id = current_user
    @review.written_by = current_user.name

    respond_to do |format|
      if @review.save
        @product.add_new_rating(@review.rating)
        current_user.products_reviewed.push(@review.product_id)
        current_user.save()
        format.html { redirect_to @product }
      end
    end
  end

  def edit
    @product = Product.find(params[:id])
    @review = current_user.reviews.where(:product_id => @product.id).first
    @title = "Update Review for " + @product.name
  end

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build()
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @old_rating = @review.rating
    @review = current_user.reviews.find(params[:id])
    
    if @review.update_attributes(params[:review])
      @product.recalculate_rating(@old_rating, @review.rating)
      redirect_to :index_path
    end
  end

  def vote
    @review = Review.find(params[:id])
    respond_to do |format|
      if @review.vote_up
        current_user.reviews_voted_on.push(@review.id)
        current_user.save()
        format.html { redirect_to product_reviews_path }
        format.js
      end
    end
  end
end
