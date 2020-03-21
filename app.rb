require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}" 
  end

  get '/square/:number' do
    @number_squared = params[:number].to_i
    "#{@number_squared*@number_squared}"
  end

  get '/say/:number/:phrase' do   
    @phrase = params[:phrase]
    @num = params[:number].to_i
    
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    erb :say_words

  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    erb :operation
  end

end