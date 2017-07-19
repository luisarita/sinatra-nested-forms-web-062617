require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    get '/new' do
      erb :"pirates/new"
    end
    get '/pirates' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @ships = params[:pirate][:ships]
      ships = @ships.map do |ship|
        Ship.new(ship[:name], ship[:type], ship[:booty])
      end
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height], ships)
      erb :"pirates/show"
    end
  end
end
