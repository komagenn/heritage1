class NationsController < ApplicationController
  def index
    @nation=Nation.find(params[:id])
  end
  def create
    nation = Country.create(nation_params)
    redirect_to "/heritages/#{nation.heritage.id}"
  end

  private
  def nation_params
    params.require(:nation).permit(:nation_id).merge(user_id: current_user.id, heritage_id: params[:heritage_id])
  end

  

end
 