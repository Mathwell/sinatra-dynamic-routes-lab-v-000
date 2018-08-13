require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reverse/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/reversename/:name' do
    @user_name=params[:name].reverse

  end

  get '/square/:number' do
    @square=params[:number].to_i**2
     @square.to_s
  end

get '/say/:number/:phrase' do
  @n=params[:number]
  @phrase=params[:phrase]
  @final_phrase=""
  for i in 1..@n do
    @final_phrase=@final_phrase+@phrase
  end
  @final_phrase
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  
end

get '/:operation/:number1/:number2' do
  
end
end
