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
      mark = if exact_match? guess, 0
               "+"
             elsif number_match? guess, 0
               "-"
             else
               ""
             end
      @output.puts mark
    end

    private
    def exact_match?(guess, index)
      @code[index] == guess[index]
    end

    def number_match?(guess, index)
      @code.include? guess[index]
    end
  end
end
