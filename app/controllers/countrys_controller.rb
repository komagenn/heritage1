class CountrysController < ApplicationController
  def index
    @country =Country.find(params[:id])
  end
  def create
    country = Country.create(country_params)
    redirect_to "/heritages/#{country.heritage.id}"
  end
  def argentina
    @country =Country.find(id: params[2])
  end

  private
  def country_params
    params.require(:country).permit(:country_id).merge(user_id: current_user.id, heritage_id: params[:heritage_id])
  end

end
 