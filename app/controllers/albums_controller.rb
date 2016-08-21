class AlbumsController < ApplicationController
  def index
    # @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
  	@albums = RSpotify::Album.search(params[:album_name])
  end

  def show
  	@album = RSpotify::Album.find(params[:id])
  end
end
