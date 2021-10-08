class HeritagesController < ApplicationController
  before_action :search_nation_heritage, only: [:index, :nation, :search]
  before_action :move_to_index, except: [:index, :show]
  before_action :set_action, only: [:show, :edit, :destory]
 
  def index
    @heritages = Heritage.all
    # @nation =Country.find(params[:id])
  end
  def new
     @heritage = Heritage.new
    
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
    @heritage = Heritage.find(params[:id])
    # @nation = @heritage.nation.includes(:user)
  end
  def edit
    unless @heritage.user_id == current_user.id
      redirect_to action: :show
     end
  end
  def update
    @heritage = Heritage.find(params[:id])
   if @heritage.update(heritage_params)
     redirect_to heritage_path(@heritage)
   else
     render :edit
   end
 
 end
  def destory
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
  # def nation_params
  #   params.permit(:nation_id).merge(heritage_id: @heritage.id)
  # end

  # def image
  #   @heritages = Heritage.where(user_id: current_user.id).where.not(heritage_id: nil)
  # end
  def set_action
    @heritage = Heritage.find(params[:id])
  end
  
end