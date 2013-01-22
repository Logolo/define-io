require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  fixtures :all

  test "review must belong to a product" do
    review = Review.new(:title => "Title", :user_id => 1)
    assert !review.save, "Review saved without belonging to a product."
  end

  test "review must belong to a user" do
    review = Review.new(:product_id => 1, :title => "Title")
    assert !review.save, "Review saved without belonging to a user."
  end

  test "review must have a title" do
    review = Review.new(:product_id => 1, :user_id => 1)
    assert !review.save, "Review saved without a title."
  end
end
