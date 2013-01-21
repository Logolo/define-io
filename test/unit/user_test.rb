require 'test_helper'

class UserTest < ActiveSupport::TestCase
  #  test "the truth" do
  #    assert true, "Truth passed."
  #  end

  test "user cannot be created due to lacking various creation information" do
    user = User.new
    assert !user.save
  end

  test "user confirmation requires password and password confirmation" do
    user = User.new
    assert user.admin == false, "User is admin on creation."
  end
end
