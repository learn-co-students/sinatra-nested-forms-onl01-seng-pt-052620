require './environment'

module FormsLab

  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"])

      params["pirate"]["ships"].each do |details|
        Ship.new(details)
      end 

      @ship = Ship.all

      erb :pirate_ship
    end
  
  end

end
