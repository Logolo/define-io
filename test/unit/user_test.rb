require 'test_helper'

class UserTest < ActiveSupport::TestCase
  fixtures :all

  test "user cannot be created due to lacking various creation information" do
    user = User.new
    assert !user.save
  end

  test "user does not have admin privileges upon creation" do
    user = User.new
    assert user.admin == false, "User has admin privileges upon creation."
  end
end
