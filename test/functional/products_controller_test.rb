require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  
  test "should not get new products form if not signed in or admin" do
    @user = User.new
    @user.admin = true # enabling or disabling this allows for access
    sign_in :user, @user
    sign_in @user
    get :new
    assert_response :redirect unless @user.admin?
  end
end
