class UsersController < ApplicationController
  def index
    @user = User.all
  end
  def show
    @user = User.find(params[:id])
    # @heritage = Heritage.where(user_id: current_user.id).where.not(image: nil)
    @heritages = Heritage.all
    @users = @user.heritages
  end
  

  private
  def user_params
    params.require(:user).permit(:nick_name, :email, :password, :password_confirmation)
  end
end
