class UsersController < ApplicationController
  def index
    @user = User.all
  end
  def show
    @user = User.find(params[:id])
    @nick_name = @user.nick_name
    @heritage = @user.heritages
  end

  private
  def user_params
    params.require(:user).permit(:nick_name, :email, :password, :password_confirmation)
  end
end
