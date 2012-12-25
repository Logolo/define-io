class Review < ActiveRecord::Base
  attr_accessible :content, :old_rating, :product_id, :rating, :title, :user_id, :votes, :written_by
  belongs_to :product
  belongs_to :user
  validates :product_id, :presence => true
  validates :user_id, :presence => true

  # def vote_down
  # Argument: changed_vote (default: false)
  # If the vote has not been changed, subtract
  # one from the Review object's score. Otherwise,
  # subtract two.
  def vote_down(changed_vote = false)
    if !changed_vote
      self.votes -= 1
    else
      self.votes -= 2
    end
    self.save()
  end

  # def vote_up
  # Argument: changed_vote (default: false)
  # If the vote has not been changed, add
  # one to the Review object's score. Otherwise,
  # add two.
  def vote_up(changed_vote = false)
    if !changed_vote
      self.votes += 1
    else
      self.votes += 2
    end
    self.save()
  end
end