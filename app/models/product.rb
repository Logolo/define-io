class Product < ActiveRecord::Base
  extend FriendlyId
  attr_accessible :average, :description, :name, :release_date, :rating_sum, :slug, :total_reviews
  has_many :reviews, :dependent => :destroy
  friendly_id :name, :use => :slugged

  # def add_new_rating
  # Argument: rating
  # Adds a new review's rating to a Product's table
  # and increases the number of reviews it has.
  def add_new_rating(rating)
    self.total_reviews += 1
    self.rating_sum += rating
    self.average = rating_sum / total_reviews
    self.save()
  end

  # def recalculate_rating
  # Arguments: rating, new_rating
  # Recalculate a product's overall rating based on
  # the overall rating sum. Subtract the old rating,
  # then add the new rating and recalculate the average.
  def recalculate_rating(rating, new_rating)
    self.rating_sum -= rating
    self.rating_sum += new_rating
    self.average = rating_sum / total_reviews
    self.save()
  end
end
