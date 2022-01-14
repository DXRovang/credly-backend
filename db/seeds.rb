require 'rest-client'
require 'figaro'

BASE_URL = "https://api.thedogapi.com/v1/breeds"
response = RestClient.get(BASE_URL, headers={
  "x-api-key": ENV['API']
}) 
hero_array = JSON.parse(response)



binding.pry

# hero_array.each do |hero|
#   Superhero.create(
#     name: hero['name'],
#     gender: hero['gender'],
#     culture: hero['culture'],
#     born: hero['born'],
#     died: hero['died']
#   )
# end



# binding.pry