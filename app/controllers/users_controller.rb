class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @title = "Profile for " + @user.name
  end
end
