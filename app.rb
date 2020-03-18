require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @name = params[:name]
    "#{@name.reverse}"
  end 

  get "/square/:number"do 
      @number = params[:number]
      "#{@number.to_i * @number.to_i}"
  end

  get "/say/:number/:phrase" do 
    phr =''
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times { phr += "#{@phrase} " }
    phr
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:opertaion/:number1/:number2" do 
      @op = params[:opertaion]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      if @op == "add"
        "#{@num1+@num2}"
      elsif @op == "subtract"
        "#{@num1- @num2}"
      elsif @op == "multiply"
        "#{@num1* @num2}"
      elsif @op == "divide"
        "#{@num1 / @num2}" 
      end
  end
end