class ReviewsController < ApplicationController
  def create
    @review = Review.new(params[:review])
    @product = Product.where(:product_id => @review.product_id)
    @product.total_reviews += 1

    respond_to do |format|
      if @review.save
        format.html { redirect_to :index_path, :notice => "Review successfully added." }
      end
    end
  end
end
