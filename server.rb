require 'sinatra/base'
require 'json'

class Server < Sinatra::Base
  post '/event' do
    payload = JSON.parse(request.body.read)
    "Hello event #{payload}"
  end
end
