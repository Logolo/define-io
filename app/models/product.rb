class Product < ActiveRecord::Base
  extend FriendlyId
  attr_accessible :description, :name, :release_date, :score, :slug, :total_reviews
  has_many :reviews, :dependent => :destroy
  friendly_id :name, :use => :slugged

  def add_new_score(score)
    self.total_reviews += 1
    sum = 0
    if self.total_reviews != 0
      self.reviews.each do |review|
        sum += review.rating
      end
      self.score = sum / total_reviews
    end
    self.save()
  end
end
