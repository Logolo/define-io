class ReviewsController < ApplicationController
  def create
    @review = Review.new(params[:review])
    @review.posted_on = Time.now()

    if @review.save
        format.html { redirect_to @review, :notice => "Review successfully added." }
    end
  end

  def new
    @review = Review.new(:product_id => params[:product_id], :user_id => current_user)
  end

  def show
    @review = Review.find(params[:id])
  end
end
