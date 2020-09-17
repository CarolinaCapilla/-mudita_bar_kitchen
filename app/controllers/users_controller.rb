class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
    @kitchen = Kitchen.where(user_id: current_user.id)
  end  
end
