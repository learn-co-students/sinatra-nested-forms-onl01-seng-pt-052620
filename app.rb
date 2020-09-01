require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end


    get '/pirates' do

      @pirates = Pirate.all

      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])

      erb :'pirates/show'
    end

    post '/pirates' do

      @pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])

      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(ship_data[:name], ship_data[:type], ship_data[:booty])

      end

      erb :'/pirates/show'
    end
  end
end





    #
    # get '/' do
    #   erb :root
    # end
