class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      #success
      flash[:success] = "Welcome to the Kaiju Blog, #{@user.username}!"
      redirect_to articles_path
    else
      #failure
      render 'new'
    end
  end
  
  private
  
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end