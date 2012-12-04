module ProductsHelper
  # def authorized
  # Return whether or not the user is an admin, and thus
  # permitted to add new products.
  def authorized
    if user_signed_in? && current_user.admin?
      true
    else
      false
    end
  end

  # def calculate_score
  # argument: product
  # Calculates the average score for a given product. This
  # will be expanded in the future to account for weighting.
  def calculate_score(product)
    @product = product
    reviews = Review.where(:product_id => @product.id)
    sum = 0
    reviews.each do |review|
      sum += review.rating
    end
    if sum != 0
      sum / reviews.count
    else
      "No Reviews"
    end
  end

  def reviewed?(product_id)
    current_user.products_reviewed.include?(product_id)
  end

  # def score_badge
  # Applies a badge to a given product's listing based on its
  # average score.
  def score_badge(score)
    case score
      when 0..4
        raw("<span class=\"badge badge-important\">#{score}</span>")
      when 4.1..6
        raw("<span class=\"badge\">#{score}</span>")
      when 6.1..7.9
        raw("<span class=\"badge badge-important\">#{score}</span>")
      when 8..8.9
        raw("<span class=\"badge badge-success\">#{score}</span>")
      else
        raw("<span class=\"badge badge-warning\">#{score}</span>")
    end
  end
end
