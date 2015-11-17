class Brewerydb
  # creates getter methods for temp_f, weather, city and state.
  attr_reader :name, :nameDisplay, :abv, :style, :label

  # initialize method takes 2 arguments city and state
  def initialize(name)

    # create the url using the city and state arguments. Also utilizing ENV
    # variable provided by figaro. Key value should be in 'config/application.yml'
    url = "http://api.brewerydb.com/v2/beers?name=#{name.gsub(/\s/, "_")}&key=#{ENV["brewerydb_api_key"]}"

    # utilizing httparty gem to make get request to the url prescribed in the
    # line above and storing the response into the variable below.
    response = HTTParty.get(url)

    # instantiating temp_f and weather by parsing through the JSON response
    @abv = response["data"][0]["abv"]
    @style = response["data"][0]["style"]["shortName"]
    @photo_url = response["data"][0]["labels"]["large"]

    # storing arguments as instance varibles in the model
    @name = name
  end
end
