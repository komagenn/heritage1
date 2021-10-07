class HeritagesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_action, only: [:show, :edit, :destory]
  before_action :search_country_heritage, only: [:index, :country, :search]
  def index
    @heritages = Heritage.all
    # @country =Country.find(params[:id])
  end
  def new
     @heritage = Heritage.new
    # @heritage_country = HeritageCountry.new
  #   @country_id = params[:country_id]  
  end
  def create
    @heritage = Heritage.create(heritage_params)
    if @heritage.save
      redirect_to root_path
    else
      render :new
    end
    # #  Country.create(country_params)
      
 
    
  
    # if @heritage_country.valid?
    #   @heritage_country.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
    # @heritage = Heritage.new(heritage_params)
   
  end
  def show
    @country = Country.new
    @heritage = Heritage.find(params[:id])
    # @country = @heritage.country.includes(:user)
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

  # def argentina
  #   @heritage = Heritage.find(country_id: params[2])
  # end
  # def uruguay
  #   @heritage = Heritage.where(id: params[:id])
  #   if @country_id == 3
  #     @country_id = Country_id.all
  #   end
  # end
  # def ecuador
  #   @heritage = Heritage.where(id: params[:id])
  #   if @country_id == 4
  #     @country_id = Country_id.all
  #   end
  # end

  def country
    @heritages = @q.result
    country_id = params[:q][:country_id_eq]
    @country = Country.find_by(id: country_id)
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
  # def country_params
  #   params.permit(:country_id).merge(heritage_id: @heritage.id)
  # end

  # def image
  #   @heritages = Heritage.where(user_id: current_user.id).where.not(heritage_id: nil)
  # end
  def set_action
    @heritage = Heritage.find(params[:id])
  end
  def search_country_heritage
    @q = Heritage.ransack(params[:q])
  end
end