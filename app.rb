require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @n1 = params[:number]
    "#{@n1.to_i * @n1.to_i}"
  end

  get '/say/:number/:phrase' do
    empty_string = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times { empty_string += "#{@phrase} " }
    empty_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do 
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if @op == "add"
      "#{@n1+ @n2}"
    elsif @op == "subtract"
      "#{@n1- @n2}"
    elsif @op == "multiply"
      "#{@n1* @n2}"
    elsif @op == "divide"
      "#{@n1 / @n2}" 
    end
  end
end