class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  @user.listings.all
  end
end
