class HerosController < ApplicationController
  def index
    @Heroes = Hero.all 
    render json: @Heroes
  end

  def show
    issue_bage2()
    hero = Hero.find_by(id: params[:id])
    render json: hero
  end

  private

  def issue_badge1
    form_data = {
      headers: 
      {"Accept": "application/json",
      "Authorization": ENV['AUTH'],
      "Content-type": "application/json"},
      body: 
      {"badge_template_id": ENV['BADGE2'],
      "issued_to_first_name": "Bella",
      "issued_to_last_name": "the Doberman"}
    }
    url = "https://sandbox-api.youracclaim.com/organizations/#{ORG}/badges"

    request = Net::HTTP:Post.new(url, form_data)
    repsonse = http.request(request)
  end

  def issue_badge2
    response = HTTParty.post("https://sandbox-api.youracclaim.com/organizations/#{ORG}/badges",
              :body => {
                "badge_template_id": ENV['BADGE2'],
                "issued_to_first_name": "Bella",
                "issued_to_last_name": "the Doberman"
              }.to_json,
              :headers => {
                "Accept": "application/json",
                "Authorization": ENV['AUTH'],
                "Content-type": "application/json"
              }
            )
  end

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
