module ReviewsHelper
  def voted_on_review?(review)
    current_user.reviews_voted_on.include?(review.id)
  end
end
