class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reviews = Review.where("user_id = ?", @user)
    @title = "Profile for " + @user.name
  end
end
