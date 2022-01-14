require 'rest-client'
require 'figaro'

BASE_URL = "https://api.thedogapi.com/v1/breeds"
response = RestClient.get(BASE_URL, headers={
  "x-api-key": ENV['API']
}) 
hero_array = JSON.parse(response)

hero_array.each do |hero|
  Hero.create(
    name: hero['name'],
    temperament: hero['temperament'],
    life_span: hero['life_span'],
    origin: hero['origin'],
    bred_for: hero['bred_for'],
    breed_group: hero['breed_group'],
    image_url: hero['image']['url']
  )
end



# binding.pry