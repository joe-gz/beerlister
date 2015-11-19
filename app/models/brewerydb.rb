class Brewerydb
  # creates getter methods for temp_f, weather, city and state.
  attr_reader :name, :nameDisplay, :abv, :style, :label, :photo_url

  # initialize method takes 2 arguments city and state
  def initialize(name)

    # create the url using the city and state arguments. Also utilizing ENV
    # variable provided by figaro. Key value should be in 'config/application.yml'
    url = "http://api.brewerydb.com/v2/search?q=#{name.gsub(/\s/, "_")}&type=beer&key=#{ENV["brewerydb_api_key"]}"

    # utilizing httparty gem to make get request to the url prescribed in the
    # line above and storing the response into the variable below.
    response = HTTParty.get(url)

    # instantiating temp_f and weather by parsing through the JSON response
    if response["data"][0]
      @abv = response["data"][0]["abv"]
    else
      @abv = "abv unknown"
    end

    if response["data"][0]["style"]
      @style = response["data"][0]["style"]["shortName"]
    else
      @style = "Style unknown"
    end

    if response["data"][0]["labels"]
      @photo_url = response["data"][0]["labels"]["large"]
    else
      @photo_url = 'noimage.jpg'
    end
    # storing arguments as instance varibles in the model
    @name = name
  end

end
