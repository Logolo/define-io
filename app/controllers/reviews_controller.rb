class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(params[:review])
    @review.user = current_user
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

  # def vote_down
  # Vote down function. Pull the current review by its id, then test to see if
  # the current user has already voted up the given review in question. If the
  # current_user's reviews_voted_on id_key value is equal to "down" (as stored
  # within the hash), do nothing. This is a security measure against a user
  # attempting to vote a review down more than once. Assuming that the check
  # passes, test to see if the user has voted the review up. If so, run the
  # Review class's vote_up, but set the changed_vote parameter to true.
  # Otherwise, run as normal.
  def vote_down
    @review = Review.find(params[:id])
    unless current_user.reviews_voted_on[@review.id] == "down"
      if current_user.reviews_voted_on[@review.id] == "up"
        if @review.vote_down(changed_vote = true)
          current_user.reviews_voted_on = current_user.reviews_voted_on.merge({@review.id => "down"})
          current_user.save()
        end
      else
        if @review.vote_down()
          current_user.reviews_voted_on = current_user.reviews_voted_on.merge({@review.id => "down"})
          current_user.save()
        end
      end
    end
  end

  # def vote_up
  # Vote up function. Pull the current review by its id, then test to see if
  # the current user has already voted up the given review in question. If the
  # current_user's reviews_voted_on id_key value is equal to "up" (as stored
  # within the hash), do nothing. This is a security measure against a user
  # attempting to vote a review up more than once. Assuming that the check
  # passes, test to see if the user has voted the review down. If so, run the
  # Review class's vote_up, but set the changed_vote parameter to true.
  # Otherwise, run as normal.
  def vote_up
    @review = Review.find(params[:id])
    unless current_user.reviews_voted_on[@review.id] == "up"
      if current_user.reviews_voted_on[@review.id] == "down"
        if @review.vote_up(changed_vote = true)
          current_user.reviews_voted_on = current_user.reviews_voted_on.merge({@review.id => "up"})
          current_user.save()
        end
      else
        if @review.vote_up()
          current_user.reviews_voted_on = current_user.reviews_voted_on.merge({@review.id => "up"})
          current_user.save()
        end
      end
    end
  end
end
