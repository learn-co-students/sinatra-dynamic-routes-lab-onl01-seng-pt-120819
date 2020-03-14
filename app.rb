require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]

    "#{@name.reverse}"
  end

  get '/square/:number' do 
    @num = params[:number].to_i

    "#{@num ** 2} "
  end

  get '/say/:number/:phrase' do 
    @num = params[:number]
    @phrase = params[:phrase].to_s
    @arr = []
    "#{@num}".to_i.times do 
      @arr.push("#{@phrase}")
    end

    @arr.join(' ')
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @arr = [params[:word1], params[:word2], params[:word3], params[:word4],params[:word5]]

    @arr.join(' ') + "."
  end

  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if params[:operation] == "add" 
      "#{@num1 + @num2}"
    elsif params[:operation] == "subtract" || params[:operation] == "minus"
      "#{@num2 - @num1}"
    elsif params[:operation] == "divide"
      "#{@num1 / @num2}"
    elsif params[:operation] == "multiply"
      "#{@num1 * @num2}"
    end
  end
end