class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    authorize @user
    @djs = @user.djs
    @dj = Dj.new
  end
  # def index
  #   @users = User.all
  # end

  # def show
  #   @user = User.find(params[:id])
  # end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)
  #   @user.save
    
  #   redirect_to user_path(@user)
  # end

  # private
  # def user_params
  #   params.require(:user).permit(:email, :name, :address, :phone_number)
  # end
end
