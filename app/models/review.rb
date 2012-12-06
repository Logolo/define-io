class Review < ActiveRecord::Base
  attr_accessible :content, :old_rating, :product_id, :rating, :title, :user_id, :votes, :written_by
  belongs_to :product
  belongs_to :user
  validates :product_id, :presence => true
  validates :user_id, :presence => true

  def vote_down(changed_vote = false)
    unless changed_vote
      self.votes -= 1
    else
      self.votes -= 2
    end
    self.save()
  end

  def vote_up(changed_vote = false)
    unless changed_vote
      self.votes += 1
    else
      self.votes += 2
    end
    self.save()
  end
end