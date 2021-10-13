class UsersController < ApplicationController
  def index
    @user = User.all
  end
  def show
    @user = User.find(params[:id])
    @heritages = Heritage.all
    @users = @user.heritages
  end
  

  private
  def user_params
    params.require(:user).permit(:nick_name, :email, :password, :password_confirmation)
  end
end
