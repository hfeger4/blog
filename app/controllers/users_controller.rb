class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :destroy]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Wecome to the Alpha Blog #{@user.username}"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:username,:password,:email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
