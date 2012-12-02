class Review < ActiveRecord::Base
  attr_accessible :content, :product_id, :rating, :title, :user_id, :votes, :written_by
  belongs_to :product
  belongs_to :user
  validates :product_id, :presence => true
  validates :user_id, :presence => true
end