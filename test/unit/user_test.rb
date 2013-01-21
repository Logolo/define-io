require 'test_helper'

class UserTest < ActiveSupport::TestCase
  #  test "the truth" do
  #    assert true, "Truth passed."
  #  end

  test "user cannot be created due to lacking information" do
    user = User.new
    assert !user.save
  end
end
