require 'sinatra'
use Rack::Auth::Basic, "Protected Area" do |username, password|
  username == 'User' && password == 'Pass'
end

enable :sessions
require_relative 'models/highlow.rb'


get '/' do
@game = Highlow.new
session[:game] = @game
erb :index


#session.clear
end

get '/results/:higherlower' do
@game = session[:game]
puts params[:higherlower]
@results = @game.result(params[:higherlower])
erb :result



end


