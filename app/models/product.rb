class Product < ActiveRecord::Base
  attr_accessible :description, :name, :release_date, :score, :total_reviews
  has_many :reviews, :through => :users, :dependent => :destroy

  def calculate_score(product)
   @product = product
    reviews = Review.where(:product_id => @product.id)
    reviews.inject(:+) / reviews.sum
  end
end
