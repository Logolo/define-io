class Product < ActiveRecord::Base
  attr_accessible :description, :name, :release_date, :reviews, :score
  has_many :reviews, :dependent => :destroy
end
