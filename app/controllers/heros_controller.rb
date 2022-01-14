class HerosController < ApplicationController
  def index
    @Heroes = Hero.all 
    render json: @Heroes
  end

  def show
    hero = Hero.find_by(id: params[:id])
    render json: hero
  end

  private

  def hero_params
    params.require(:hero).permit(
      :name,
      :temperament,
      :life_span,
      :origin,
      :bred_for,
      :breed_group,
      :image_url
    )
  end
end
