require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
    #accepts name and renders the name backwards
  end

  get '/square/:number' do
    #accepts one number and returns the square NOTE: input will be a string use to_i
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    #accepts a number and prhase and returns phrase in a string the number of times given
    num = params[:number].to_i
    phrase = params[:phrase]
    output = ""
    num.times do |phrase|
      output << phrase
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #returns a string containing all five words
  end

  get '/:operation/:number1/:number2' do
    #performs operation (add, sub, mul, divide) on two numbers
  end

end
