class Product < ActiveRecord::Base
  extend FriendlyId
  attr_accessible :description, :name, :release_date, :score, :slug, :total_reviews
  has_many :reviews, :dependent => :destroy
  friendly_id :name, :use => :slugged
end
