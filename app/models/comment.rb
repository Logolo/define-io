class Comment < ActiveRecord::Base
  attr_accessible :content, :posted_on
end
