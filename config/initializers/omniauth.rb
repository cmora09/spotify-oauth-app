require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV["SPOTIFY_KEY"], ENV["SPOTIFY_SECRET"], scope: 'user-read-email playlist-modify-public user-library-read user-library-modify',
  provider_ignores_state: true
end