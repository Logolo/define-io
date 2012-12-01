class ReviewsController < ApplicationController
  def create
    @review = Review.new(params[:review])
    @review.user_id = current_user
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
