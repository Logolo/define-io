class ReviewsController < ApplicationController
  def create
    @review = Review.new(params[:review])
    @review.user_id = current_user
    @review.written_by = current_user.name
    @review.product.total_reviews += 1
    @review.product.save()
    current_user.products_reviewed.push(@review.product_id)
    current_user.save()

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review }
      end
    end
  end

  def edit
    @review = Review.find(params[:id])
    if @review.update_attributes(params[:review])
      redirect_to :index_path
    end
  end

  def new
    @review = Review.new(:product_id => params[:product_id])
  end

  def show
    @review = Review.find(params[:id])
  end
end
