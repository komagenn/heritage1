class HeritagesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :show, :update,:create, :destroy]
  before_action :search_nation_heritage, only: [:index, :nation, :search]
  before_action :move_to_index, except: [:index, :show]
  before_action :set_action, only: [:show, :edit,:update, :destroy]
  before_action :no_edit, only: [:edit, :update, :destroy]
  def index
    @heritages = Heritage.all
  end
  def new
     @heritage = Heritage.new
    unless @heritage.user_id == current_user.id
      redirect_to root_path
    end 
  end
  def create
    @heritage = Heritage.create(heritage_params)
    if @heritage.save
      redirect_to root_path
    else
      render :new
    end
   
  end
  def show
    @nation = Nation.new
  end
  def edit
    unless @heritage.user_id == current_user.id
      redirect_to action: :show
     end
  end
  def update
   if @heritage.update(heritage_params)
     redirect_to heritage_path(@heritage)
   else
     render :edit
   end
 end
  def destroy
    @heritage.destroy
      redirect_to root_path
  end
  def nation
    @heritages = @q.result
    nation_id = params[:q][:nation_id_eq]
    @nation = Nation.find_by(id: nation_id)
  end
  
 private
  def search_nation_heritage
    @q = Heritage.ransack(params[:q])
  end
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  def heritage_params
    params.require(:heritage).permit(:name, :register_id, :nation_id, :explain, images:[]).merge(user_id: current_user.id)
  end
  def set_action
    @heritage = Heritage.find(params[:id])
  end
  def no_edit
    unless @heritage.user_id == current_user.id
      redirect_to root_path
    end
  end
  
end