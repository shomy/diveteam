class UsersController < ApplicationController
  def index
    if user_signed_in?
      @users = User.all.where.not(id: current_user.id)
    else
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
