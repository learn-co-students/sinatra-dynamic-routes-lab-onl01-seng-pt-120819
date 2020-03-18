require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    @name
  end
  
  get '/square/:number'do
    @number = params[:number].to_i ** 2
    @number.to_s
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i  
    @phrase = params[:phrase]
    @phrase * @num #string before num
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #@answer = params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5] + '.'
    @answer = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @answer
  end
  
  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    
    if @operation == 'add' 
      @answer = @num1 + @num2
    elsif @operation == 'subtract'
     @answer = @num1 - @num2
    elsif @operation == "multiply"
     @answer = @num1 * @num2
    elsif @operation == "divide"
     @answer = @num1 / @num2
    end

    @answer.to_s
  end 
  
end
