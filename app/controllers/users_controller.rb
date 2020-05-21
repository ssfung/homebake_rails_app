class UsersController < ApplicationController
  # returns all users 
  def index
    @user = User.all
  end
  #finds the user with the relevant id 
  def show
    @user = User.find(params[:id])
  end
end
