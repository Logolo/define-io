class Article < ActiveRecord::Base
  attr_accessible :content, :posted_on, :slug, :title
end
