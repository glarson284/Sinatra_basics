require 'sinatra'
require 'pry'

get '/' do
  @name = "Gwen" 
 
  erb :home
  "Hello World"

end

get '/about' do
  num_times = 7
  "Best site ever" * num_times
end

get '/hello' do

  hello = 5
  if hello == 5
    @output = "hello" * 5
  end

  erb :home
end

get '/elevator' do 

  class Elevator 
    def initialize(floor,change)
      @floor = floor
      @change = change
    end

    attr_accessor :change

    def self.elev 
      new(0,1)
    end

    def up 
      @floor += change unless @floor == 20
        "Welcome to floor #{@floor}!"
      if @floor == 20
        "This is the top floor, you can go no higher."
      elsif @floor == 13
        "Don't get off here"
      end
    end



    def down
      @floor -= change unless @floor == -1
        "Welcome to floor #{@floor}!"
      if @floor == -1
        "This is the basement! Bottom Floor!"
      end
    end
  

  end
    elav = Elevator.elev
    elav.up 
    elav.up
   @out = elav.up
erb :home
end
get '/variable' do
  @name = "Gwen"
  
  erb:home
end




