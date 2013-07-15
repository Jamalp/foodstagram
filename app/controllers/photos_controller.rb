class PhotosController < ApplicationController
  def home
  end

  def result
    client = Foursquare2::Client.new(:client_id => ENV['foursquare_client_id'], :client_secret => ENV['foursquare_client_secret'])
    if params[:location]
      @search = client.search_venues(:near => params[:location], :query =>  params[:place])
      @foursquare_id = @search.groups[0][:items].first[:id]
      @location =  Instagram.location_search(@foursquare_id).first
      @photos = Instagram.location_recent_media(@location.id)
    end
  end

  def about
  end
end