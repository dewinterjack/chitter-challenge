require 'sinatra'
# call database setup

set :root, File.dirname(__FILE__)

class Chitter < Sinatra::Base
  get '/' do
    "Welcome to Chitter!"
  end
end

require_relative 'routes/init'
