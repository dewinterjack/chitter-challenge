require 'sinatra'

set :root, File.dirname(__FILE__)

class Chitter < Sinatra::Base
  get '/' do
    "Welcome to Chitter!"
  end
end
