require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse!
  end

get '/say/:number/:phrase' do
  @phrase = params[:phrase]
  @number = params[:number].to_i
  @number.times do
    @phrase
  end
end

get 'square/:number' do
  params[:number]^2
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

end
