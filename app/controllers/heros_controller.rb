class HerosController < ApplicationController
  def index
    @Heroes = Hero.all 
    render json: @Heroes
  end
end
