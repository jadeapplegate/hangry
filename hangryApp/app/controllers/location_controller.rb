class LocationController < ApplicationController

  def index

  end

  def results 
    parameters = { term: 'food', lat:params[:lat],long:params[:long], limit: 1 }
    response = Yelp.client.search('San Francisco', parameters)
    @address = response.businesses[0].location.display_address[0]
    @name = response.businesses[0].name
    @lat =  response.businesses[0].location.coordinate.latitude
    @long = response.businesses[0].location.coordinate.longitude
  end

end