class Review < ActiveRecord::Base
  attr_accessible :content, :posted_on, :product_id, :rating, :user_id
  belongs_to :user
end