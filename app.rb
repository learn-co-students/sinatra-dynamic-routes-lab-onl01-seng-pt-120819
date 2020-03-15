require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @username = params[:name].reverse 
    "#{@username}"
  end

  get "/square/:number" do 
    @expo = (params[:number].to_i ** 2)
    "#{@expo}.to_s"
  end

  get "/say/:number/:phrase" do
    string = ""
    @num = params[:number].to_i
    @say_phrase = params[:phrase]
      @num.times {string += "#{@say_phrase}"}
      string
    
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @say_word_1 = params[:word1]  
    @say_word_2 = params[:word2]
    @say_word_3 = params[:word3]
    @say_word_4 = params[:word4] 
    @say_word_5 = params[:word5]
    @say_all_words = "#{@say_word_1} #{@say_word_2} #{@say_word_3} #{@say_word_4} #{@say_word_5}."
    "#{@say_all_words}"
  end
   
  get "/:operation/:number1/:number2" do 
    @math = params[:operation]
  
    if @math == "add"
      @anwser = (params[:number1].to_i + params[:number2].to_i)
    "#{@anwser}"
    elsif @math == "subtract"
      @anwser = (params[:number1].to_i - params[:number2].to_i)
      "#{@anwser}"
    elsif @math == "multiply"
      @anwser = (params[:number1].to_i * params[:number2].to_i)
      "#{@anwser}"
    elsif @math == "divide"
      @anwser = (params[:number1].to_i / params[:number2].to_i)
      "#{@anwser}"
    end
  end
end