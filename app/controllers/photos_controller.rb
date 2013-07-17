class PhotosController < ApplicationController
  def home
  end

  def result
    client = Foursquare2::Client.new(:client_id => ENV['FOURSQUARE_CLIENT_ID'], :client_secret => ENV['FOURSQUARE_CLIENT_SECRET'])
    if params[:location]
      @search = client.search_venues(:near => params[:location], :query =>  params[:place])
      @foursquare_id = @search.groups[0][:items].first[:id]
      @location =  Instagram.location_search(@foursquare_id).first
      @photos = Instagram.location_recent_media(@location.id, options = {count: 16})

    end
  end

    def save
      @search = Search.new(:name => search.name,
                           :location => search.location)
      raise

    end

  def about
  end
end