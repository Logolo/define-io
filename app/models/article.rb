class Article < ActiveRecord::Base
  attr_accessible :content, :slug, :title
end
