require 'sinatra'
enable :sessions
require_relative 'models/highlow.rb'


get '/' do
@game = Highlow.new
erb :index

#session.clear
end


post '/' do 
  
  deal = rand(10) + 1
  session[:deal] = deal



firstnum = deal

end




post '/guess/:deal' do 
  
 seconddeal = rand(10) + 1
 end

if seconddeal == session[:deal]
    session[:result] = "Push!"
elsif seconddeal > session[:deal]
    session[:result] = "Sorry!"
elsif seconddeal < session[:deal]
    session[:result] = "Sorry!"
end