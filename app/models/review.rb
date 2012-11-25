class Review < ActiveRecord::Base
  attr_accessible :content, :posted_on, :product, :rating, :score
  belongs_to :product
end
