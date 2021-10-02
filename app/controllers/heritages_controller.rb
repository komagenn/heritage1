class HeritagesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @heritages = Heritage.all 
  end
  def new
    @heritage = Heritage.new
  end
  def create
    @heritage = Heritage.new(heritage_params)
    if @heritage.save
      redirect_to root_path
    else
      render :new
    end
  end
  def show

  end

 private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  def heritage_params
    params.require(:heritage).permit(:name, :register_id, :country_id, :explain,images:[]).merge(user_id: current_user.id)
  end
end
