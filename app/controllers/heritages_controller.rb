class HeritagesController < ApplicationController
  def index
    @heritages = Heritage.all 
  end
end
