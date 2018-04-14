require 'sinatra'
require './helpers/db_setup_helper'
require './models/peep'

configure do
  Peep.auto_upgrade!
end

set :root, File.dirname(__FILE__)

class Chitter < Sinatra::Base
  get '/' do
    redirect '/peeps'
  end

  get '/peeps' do
    erb :index
  end
end

require_relative 'routes/init'
