class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to user_path(@user)
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end


end
