require 'sinatra'
require './helpers/db_setup_helper.rb'
require './models/peep'


configure do
  Peep.auto_upgrade!
end

set :root, File.dirname(__FILE__)

class Chitter < Sinatra::Base
  get '/' do
    "Welcome to Chitter!"
  end
end

require_relative 'routes/init'
