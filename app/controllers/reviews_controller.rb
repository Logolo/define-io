class ReviewsController < ApplicationController
  def create
    @review = Review.new(params[:review])
    @review.posted_on = Time.now()
    @review.user_id = @current_user.id

    if @review.save
        redirect_to @review, :notice => "Review successfully added."
    end
  end

  def edit
    @review = Review.find(params[:id])
    if @review.update_attributes(params[:review])
      redirect_to :index_path
    end
  end

  def new
    @review = Review.new(:product_id => params[:product_id], :user_id => current_user.id)
  end

  def show
    @review = Review.find(params[:id])
  end
end
