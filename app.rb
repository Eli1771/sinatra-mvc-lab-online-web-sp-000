require_relative 'config/environment'
require_relative 'models/piglatinizer'
class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @result = params[:user_phrase]
    @converter = PigLatinizer.new
    erb :piglatinize
  end 
end