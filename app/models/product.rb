class Product < ActiveRecord::Base
  extend FriendlyId
  attr_accessible :description, :name, :release_date, :score, :score_sum, :slug, :total_reviews
  has_many :reviews, :dependent => :destroy
  friendly_id :name, :use => :slugged

  # def add_new_rating
  # Argument: score
  # Adds a new review's score to a Product's table
  # and increases the number of reviews it has.
  def add_new_rating(rating)
    self.total_reviews += 1
    self.score_sum += rating
    self.score = score_sum / total_reviews
    self.save()
  end

  # def recalculate_rating
  # Arguments: rating, new_rating
  # Recalculate a product's overall rating based on
  # the overall score sum. Subtract the old rating,
  # then add the new rating and recalculate the score.
  def recalculate_rating(rating, new_rating)
    self.score_sum -= rating
    self.score_sum += new_rating
    self.score = score_sum / total_reviews
    self.save()
  end
end
