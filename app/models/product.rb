class Product < ActiveRecord::Base
  attr_accessible :name, :released, :reviews, :score
  has_many :reviews, :dependent => :destroy
end
