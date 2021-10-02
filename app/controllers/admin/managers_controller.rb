class Admin::ManagersController < ApplicationController
  before_action :if_not_admin
  before_action :set_manager, only: [:new, :create, :show, :edit, :destroy]
  def new
  end
  def create
  end
  def show
  end
  def edit
  end
  def destroy
  end


  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def set_manager
    @manager = Manager.find(params[:id])
  end
end
