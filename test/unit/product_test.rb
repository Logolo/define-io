require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "product requires a name" do
    product = Product.new
    assert !product.save, "Product saved without a name"
  end
end
