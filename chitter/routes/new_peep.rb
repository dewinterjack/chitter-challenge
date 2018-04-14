class Chitter < Sinatra::Base
  post "peeps/new" do
    Peep.create(params[:new_peep])
    redirect "/peeps"
  end
end