require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end

  get '/new' do 
    erb :index
  end

  post '/puppy' do 
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    # binding.pry
    erb :new
  end
end
