module Mastermind
  class Game
    def initialize(output)
      @output = output
    end

    def start(code=nil)
      @output.puts "Welcome to Mastermind!"
      @output.puts "Enter guess:"
    end
  end
end
