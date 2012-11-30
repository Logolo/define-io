class Review < ActiveRecord::Base
  attr_accessible :content, :posted_on, :product_id, :rating, :user_id, :votes
  belongs_to :product
  belongs_to :user
  validates :product_id, :presence => true
  validates :user_id, :presence => true
end