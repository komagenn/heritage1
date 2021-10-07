class FavoritesController < ApplicationController
  # before_action :set_heritage, only: [:create, :destroy]

  def index
    @heritages = Heritage.includes(:heritage_images).order("created_at DESC")
  end

  def create
    Favorite.create(user_id: current_user.id, heritage_id: params[:id])
    redirect_to heritages_path
  end

  def destroy
    Favorite.find_by(user_id: current_user.id, heritage_id: params[:id]).destroy
    redirect_to heritages_path
  end


  # def set_heritage
  #   @heritages = Heritage.find(params[:heritage_id])
  # end

end
