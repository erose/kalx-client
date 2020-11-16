require 'sinatra'
require 'faraday'

get '/kalx' do
  response['Access-Control-Allow-Origin'] = '*'
  Faraday.get("https://www.kalx.berkeley.edu/live-streaming").body
end
