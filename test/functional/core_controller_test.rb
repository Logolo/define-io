require 'test_helper'

class CoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get products" do
    get :products
    assert_response :success
  end
end
