class UsersController < ApplicationController
  def index
    @user = User.all
  end
  def create
  end

  def show
    @nick_name = current_user.nick_name
  end
end
