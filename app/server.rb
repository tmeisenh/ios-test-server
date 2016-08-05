require 'sinatra'
require 'json'

class Server < Sinatra::Base
  configure do
    enable :logging
  end

  before do
    logger.debug "#{params.inspect}"
  end

  post '/' do
    content_type :json
    { "return" => "a-ok" }.to_json
  end

  post '/execute_something' do
    content_type :json

    output = `ls -lah`
    {"output" => output }.to_json
  end
end
