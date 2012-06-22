module Mastermind
  class Game
    def initialize(output)
      @output = output
    end

    def start(code)
      @output.puts "Welcome to Mastermind!"
      @output.puts "Enter guess:"
    end

    def guess(guess)
      @output.puts ""
    end
  end
end
