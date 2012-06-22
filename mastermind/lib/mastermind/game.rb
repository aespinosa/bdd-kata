module Mastermind
  class Game
    def initialize(output)
      @output = output
    end

    def start(code)
      @code = code
      @output.puts "Welcome to Mastermind!"
      @output.puts "Enter guess:"
    end

    def guess(guess)
      if @code.include? guess[0]
        @output.puts "-"
      else
        @output.puts ""
      end
    end
  end
end
