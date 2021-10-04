class HeritagesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_action, only: [:show, :edit, :destory]
  def index
    @heritage = Heritage.all

  end
  def new
    @heritage = Heritage.new
    @country_id = params[:country_id]
  end
  def create
    @heritage = Heritage.new(heritage_params)
    if @heritage.save
      redirect_to root_path(@heritage)
    else
      render :new
    end
  end
  def show
    if @country_id == 2
      @country_id = Country_id.new
    end
  end
  def edit
  end
  def destory
  end

  def argentina
    if @country_id == 2
      @country_id = Country_id.new
    end
  end

 private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  def heritage_params
    params.require(:heritage).permit(:name, :register_id, :country_id, :explain, images:[]).merge(user_id: current_user.id)
  end
  # def image
  #   @heritages = Heritage.where(user_id: current_user.id).where.not(heritage_id: nil)
  # end
  def set_action
    @heritage = Heritage.find(params[:id])
  end
end
