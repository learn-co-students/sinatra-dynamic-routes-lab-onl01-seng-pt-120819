require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{ @phrase * @number }}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    "#{@word.join(" ") + "."}"
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num2 - @num1}"
    elsif @operation == "multiply"
      "#{@num2 * @num1}"
    else
      "#{@num1 / @num2}"
    end

  end


end
