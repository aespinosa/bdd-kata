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
      mark = if @code.include? guess[0]
               "-"
             else
               ""
             end
      @output.puts mark
    end
  end
end
