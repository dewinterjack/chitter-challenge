require 'sinatra'
require './helpers/db_setup_helper.rb'
require './models/peep'
DataMapper.auto_upgrade!

set :root, File.dirname(__FILE__)

class Chitter < Sinatra::Base
  get '/' do
    "Welcome to Chitter!"
  end
end

require_relative 'routes/init'
