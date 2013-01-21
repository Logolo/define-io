require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :all
  # test "the truth" do
  #   assert true
  # end

  test "product requires a name" do
    product = Product.new
    assert !product.save, "Product saved without a name."
  end

  test "product requires a description" do
    product = Product.new(:name => "Test Product")
    assert !product.save, "Product saved without a description."
  end

  test "product has a both an average and rating sum of 0 by default" do
    product = Product.new
    assert product.average && product.rating_sum == 0, "Product's default average/rating_sum values are not 0"
  end
end
