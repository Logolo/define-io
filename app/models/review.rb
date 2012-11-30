class Review < ActiveRecord::Base
  attr_accessible :content, :posted_on, :product_id, :rating, :user_id, :votes
  belongs_to :product
  belongs_to :user
end