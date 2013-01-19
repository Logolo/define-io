class Article < ActiveRecord::Base
  attr_accessible :content, :slug, :title
  belongs_to :user
end
