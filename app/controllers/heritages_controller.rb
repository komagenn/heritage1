class HeritagesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @heritages = Heritage.all 
  end
  def new
    @heritage = Heritage.new
  end
  def create
  end

 private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
