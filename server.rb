require 'sinatra/base'
require 'json'

class Server < Sinatra::Base
  post '/echo' do
    payload = JSON.parse(request.body.read)
    "Hello event #{payload}"
  end
end
