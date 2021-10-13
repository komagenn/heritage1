class FavoritesController < ApplicationController

  def index
    @heritages = Heritage.includes(:heritage_images).order("created_at DESC")
    if current_user == @heritage.user
      redirect_to root_path
    end
  end

  def create
    Favorite.create(user_id: current_user.id, heritage_id: params[:id])
    redirect_to heritages_path
  end

  def destroy
    Favorite.find_by(user_id: current_user.id, heritage_id: params[:id]).destroy
    redirect_to heritages_path
  end

end
